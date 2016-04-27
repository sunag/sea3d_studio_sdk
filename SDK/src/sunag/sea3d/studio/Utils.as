package sunag.sea3d.studio
{
	import sunag.sunag;

	use namespace sunag;
	
	public class Utils
	{
		public static function asClass(a:*, b:*):*
		{
			return a as b;
		}
		
		public static function isClass(a:*, b:*):Boolean
		{
			return a is b;
		}
		
		public static function toVectorString(array:Array):Vector.<String>
		{
			return Vector.<String>( array );
		}
		
		public static function toVectorNumber(array:Array):Vector.<Number>
		{
			return Vector.<Number>( array );
		}
		
		public static function toVectorInt(array:Array):Vector.<int>
		{
			return Vector.<int>( array );
		}
		
		public static function toVectorUInt(array:Array):Vector.<uint>
		{
			return Vector.<uint>( array );
		}
	}
}