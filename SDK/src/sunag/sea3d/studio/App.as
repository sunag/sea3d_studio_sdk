package sunag.sea3d.studio
{
	import flash.display.DisplayObject;
	import flash.display.Sprite;
	import flash.events.Event;
	
	import sunag.sunag;

	use namespace sunag;
	
	public class App extends Sprite
	{
		sunag static var scope:*;
		sunag static var app:*;
		sunag static var dependenciesApp:Object;
		
		protected var _user:String;
		protected var _name:String;
		protected var _version:uint;
		protected var _dependencies:Array;
		
		public function App(user:String, name:String, version:uint, dependencies:Array=null)
		{
			_user = user;
			_name = name;
			_version = version;
			_dependencies = dependencies || [];
		}			
			
		public function get ns():String
		{
			return _user + '.' + _name;
		}
		
		public function get about():DisplayObject
		{
			return null;
		}
		
		public function requestApp(ns:String):Boolean
		{
			return true;
		}
		
		public function get user():String
		{
			return _user;
		}
		
		override public function get name():String
		{
			return _name;
		}
		
		public function get version():uint
		{
			return _version;
		}
		
		public function get dependencies():Array
		{
			return _dependencies;
		}
		
		public static function $(args:Object):void
		{
			app = args.app;
			scope = args.scope;
		}
	}
}