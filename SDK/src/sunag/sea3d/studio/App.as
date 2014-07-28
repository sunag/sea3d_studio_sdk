package sunag.sea3d.studio
{
	import flash.display.DisplayObject;
	import flash.display.Sprite;
	import flash.events.Event;
	
	import sunag.sunag;

	use namespace sunag;
	
	public class App extends Sprite
	{
		protected var _user:String;
		protected var _name:String;
		protected var _version:uint;
		protected var _references:Array;
		
		public function App(user:String, name:String, version:uint, references:Array=null)
		{
			_user = user;
			_name = name;
			_version = version;
			_references = references || [];
		}			
				
		public function $(args:Object):void
		{
			UI.app = this;
			UI.scope = args.scope;	
			UI.references = args.references;
			
			dispatchEvent( new Event(Event.COMPLETE) );
		}
		
		public function getApp(ns:String):*
		{
			return UI.references[ns];
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
		
		public function get references():Array
		{
			return _references;
		}
	}
}