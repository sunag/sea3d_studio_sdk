package sunag.sea3d.studio
{
	import sunag.sunag;

	use namespace sunag;
	
	public class Workspace
	{
		public static const DESIGN:String = 'design';
		public static const CODE:String = 'code';
		
		public static function readWorkspace(name:String, xml:XML):void
		{
			UI.scope.readWorkspace(name, xml);
		}
		
		public static function writeWorkspace(name:String):XML
		{
			return UI.scope.writeWorkspace(name);
		}
	}
}