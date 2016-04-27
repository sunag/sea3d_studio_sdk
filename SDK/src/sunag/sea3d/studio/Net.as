package sunag.sea3d.studio
{
	import flash.net.URLRequest;
	
	import sunag.sunag;

	use namespace sunag;
	
	public class Net
	{
		public static function download(request:URLRequest, callback:Function, error:Function=null, description:String=null):void
		{
			App.scope.download(App.app, request, callback, error, description);
		}
		
		public static function upload(url:String, files:Object=null, vars:Object=null, callback:Function=null, error:Function=null):void
		{
			App.scope.upload(App.app, url, files, vars, callback, error);
		}
	}
}