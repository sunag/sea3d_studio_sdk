package sunag.sea3d.studio
{
	import sunag.sunag;

	use namespace sunag;
	
	public class Asset
	{
		public static function get assets():Object
		{
			return UI.scope.getAssets();
		}
		
		public static function get AnimationSequence():Class { return UI.scope.AnimationSequence; };
		
		public static function get Mesh():Class { return UI.scope.MeshAsset; };
		public static function get TextureURL():Class { return UI.scope.TextureURLAsset; };
		public static function get CubeMapURL():Class { return UI.scope.CubeMapURLAsset; };
		public static function get Properties():Class { return UI.scope.PropertiesAsset; };
		public static function get Animation():Class { return UI.scope.AnimationAsset; };
		public static function get AnimationBase():Class { return UI.scope.AnimationBaseAsset; };
		public static function get SkeletonAnimation():Class { return UI.scope.SkeletonAnimationAsset; };
		public static function get Camera():Class { return UI.scope.CameraAsset; };
		
		public static function get FieldObject():Class { return UI.scope.FieldObject; };
		public static function get FieldType():Class { return UI.scope.FieldType; };
	}
}