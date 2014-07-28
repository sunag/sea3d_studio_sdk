package
{
	import flash.events.Event;
	
	import content.TurntableContent;
	
	import sunag.sea3d.studio.App;
	import sunag.sea3d.studio.UI;
	
	public class Main extends App
	{
		private var win:Object;
		
		public function Main()
		{			
			super("sea3d", "turntable", 10000);
			// 10000 = VVSSBB (V=version, S=subversion, B=Build)
			
			addEventListener(Event.COMPLETE, onInit);						
		}
		
		private function onInit(e:Event):void
		{
			win = UI.createWindow("Three.JS Exporter", "exporter");
			win.width = 180;
			win.height = 70;
			win.enabledResize = false;
			win.content = new TurntableContent();
			win.open();
		}
	}
}