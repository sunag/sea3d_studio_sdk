package sunag.sea3d.studio
{
	import flash.utils.ByteArray;
	
	import sunag.sunag;

	use namespace sunag;
	
	public class Studio
	{
		public static function get BuilderSettings():Class { return App.scope.BuilderSettings; };
		
		public static function setBuild(type:String, callback:Function):void
		{
			App.scope.setBuild(App.app, type, callback);
		}
		
		public static function mergeProject(sea3d:ByteArray, callback:Function = null):void
		{
			App.scope.mergeProject(App.app, sea3d, callback);
		}
		
		public static function saveProject(callback:Function, settings:*=null):void
		{
			App.scope.saveProject(App.app, callback, settings);
		}
		
		public static function loadApp(app:ByteArray, callback:Function=null):void
		{
			App.scope.loadApp(App.app, app, callback);
		}
		
		public static function importProject(sea3d:ByteArray, callback:Function=null):void
		{
			App.scope.importProject(App.app, sea3d, callback);
		}
		
		public static function loadProject(sea3d:ByteArray, name:String=null, callback:Function=null):void
		{
			App.scope.loadProject(App.app, sea3d, name, callback);
		}
		
		public static function newProject(name:String=null, callback:Function=null):void			
		{
			App.scope.newProject(App.app, name, callback);
		}
		
		public static function getApp(ns:String):*
		{
			return App.scope.getApp(App.app, ns);
		}
		
		public static function setProperty(name:String, value:*):void
		{
			App.scope.setProperty(App.app, name, value);
		}
		
		public static function getProperty(name:String):*
		{
			return App.scope.getProperty(App.app, name);
		}
		
		public static function setPath(name:String, value:String):void
		{
			App.scope.setPath(App.app, name, value);
		}
		
		public static function getPath(name:String):String
		{
			return App.scope.getPath(App.app, name);
		}
		
		public static function setReader(type:String, callback:Function=null):void
		{
			App.scope.setReader(App.app, type, callback);
		}
		
		public static function getReader(type:String):Function
		{
			return App.scope.getReader(App.app, type);
		}
		
		public static function dispatchEvent(name:String, data:*= null):Boolean
		{
			return App.scope.dispatchEvent(App.app, name, data);
		}
	}
}