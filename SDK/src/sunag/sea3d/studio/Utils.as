package sunag.sea3d.studio
{
	import sunag.sunag;

	use namespace sunag;
	
	public class Utils
	{
		public static function isClass(a:*, b:*):Boolean
		{
			return UI.scope.isClass(a, b);
		}
	}
}