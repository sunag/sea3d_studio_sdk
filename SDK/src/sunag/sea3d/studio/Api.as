package sunag.sea3d.studio
{
	import flash.display.Bitmap;
	import flash.display.Sprite;
	import flash.net.URLRequest;
	import flash.utils.ByteArray;
	
	import sunag.sunag;

	use namespace sunag;
	
	public class Api
	{				
		public static function get SaveConfig():Class { return UI.scope.SaveConfig; };
		
		public static function get view3d():Sprite
		{
			return UI.scope.view3d;
		}
		
		public static function setEnvironment(name:String, value:*):void
		{
			UI.scope.setEnvironment(UI.app, name, value);
		}
		
		public static function save(callback:Function, config:Object=null):void
		{
			UI.scope.save(callback, config);
		}
		
		public static function load(sea3d:ByteArray, name:String=null, callback:Function=null):void
		{
			UI.scope.load(sea3d, name, callback);
		}
		
		public static function newProject(name:String=null):void			
		{
			UI.scope.newProject(name);
		}
		
		public static function getIcon(name:String):Bitmap
		{
			return UI.scope.getIcon(name);
		}
		
		public static function confirm(message:String, confirm:Function, cancel:Function=null):void
		{
			UI.scope.confirm(message, confirm, cancel);
		}
		
		public static function alert(message:String):void
		{
			UI.scope.alert(message);
		}
		
		public static function download(request:URLRequest, callback:Function, error:Function=null, description:String=null):void
		{
			UI.scope.download(request, callback, error, description);
		}
		
		public static function upload(url:String, files:Object=null, vars:Object=null, callback:Function=null, error:Function=null):void
		{
			UI.scope.upload(url, files, vars, callback, error);
		}
	}
}