package content
{
	import flash.display.DisplayObject;
	import flash.events.Event;
	import flash.utils.ByteArray;
	
	import nochump.util.zip.ZipEntry;
	import nochump.util.zip.ZipFile;
	import nochump.util.zip.ZipOutput;
	
	import sunag.sea3d.studio.Api;
	import sunag.sea3d.studio.Asset;
	import sunag.sea3d.studio.ContentSprite;
	import sunag.sea3d.studio.UI;
	
	public class TurntableContent extends ContentSprite
	{
		[Embed(source="./../../assets/Turntable.zip",mimeType="application/octet-stream")]
		private static var Turntable:Class;
		
		private var exporter:Object;
		
		public function TurntableContent()
		{
			exporter = new UI.Button("Export");
			exporter.x = exporter.y = 10;
			exporter.width = 150;
			exporter.addEventListener(Event.COMPLETE, onExport);
			addChild( exporter as DisplayObject );
						
			onResize = _onResize;
		}
		
		private function containsCamera():Boolean
		{
			for each(var asset:Object in Asset.assets)				
			{
				if (asset is Asset.Camera)
				{
					return true;
				}
			}
			
			return false;
		}
		
		private function onExport(e:Event):void
		{
			if (!containsCamera())
			{
				return Api.alert("Need a camera.");
			}
			
			//
			//	Buiild SEA3D
			//
			
			var config:Object = new Api.SaveConfig();
			config.sceneOnly = true;
			config.compile = true;					
			//config.childrenHierarchy = true;
			
			Api.save(function(bytes:ByteArray):void
			{
				if (bytes)
				{
					var zipFile:ZipFile = new ZipFile( new Turntable() );
					var zipOut:ZipOutput = new ZipOutput();
					
					//
					//	Collect Zip files
					//
					
					var ent:ZipEntry;
					
					for each(var entry:ZipEntry in zipFile.entries)
					{
						var data:ByteArray = zipFile.getInput(entry);
						data.position = 0;
						
						if (!data.length) continue;
						
						ent = new ZipEntry(entry.name);
						
						zipOut.putNextEntry( ent );
						zipOut.write( data );
						zipOut.closeEntry();
					}
					
					//
					//	WRITE SEA3D
					//
					
					ent = new ZipEntry("main.sea");						
					zipOut.putNextEntry( ent );	
					zipOut.write( bytes );
					zipOut.closeEntry();
					
					zipOut.finish();
					
					Api.confirm("File saved successfully.\nClick OK to continue.", function():void
					{
						new UI.SaveFile( new UI.FileIO( "turntable.zip", zipOut.byteArray ) ).browse();
					});
				}
				else
				{
					Api.alert("There was an error saving the file.");
				}
			}, 
				config
			);
		}
		
		private function _onResize():void		
		{
			
		}
	}
}