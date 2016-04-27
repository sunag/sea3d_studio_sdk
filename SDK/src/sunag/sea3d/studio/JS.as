package sunag.sea3d.studio
{
	import sunag.sunag;

	use namespace sunag;
	
	public class JS
	{
		public static function open(url:String, callback:Function=null):*
		{
			return App.scope.open(App.app, url, callback);
		}
		
		public static function eval(src:String, callback:Function=null):void
		{
			App.scope.eval(App.app, src, callback);
		}

		public static function call(method:String, callback:Function=null, ...params):void
		{
			App.scope.call(App.app, method, callback, params);
		}
	}
}