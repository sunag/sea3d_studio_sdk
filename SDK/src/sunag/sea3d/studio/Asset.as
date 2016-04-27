package sunag.sea3d.studio
{
	import flash.utils.ByteArray;
	
	import sunag.sunag;

	use namespace sunag;
	
	public class Asset
	{
		public static function get assets():*
		{
			return App.scope.getAssets(App.app);
		}
		
		public static function get assetsInApp():*
		{
			return App.scope.getAssetsApp(App.app);
		}
		
		public static function getInApp(name:String, type:String = null):Object
		{
			return App.scope.getAssetApp(App.app, name, type);
		}
		
		public static function get(name:String, type:String=null):Object
		{
			return App.scope.getAsset(App.app, name, type);
		}
		
		public static function get selected():*
		{
			return App.scope.getSelected(App.app);
		}
		
		public static function get info():*
		{
			return App.scope.getInfo(App.app);
		}
		
		public static function get AnimationSequence():Class { return App.scope.AnimationSequence; };
		
		public static function get Mesh():Class { return App.scope.MeshAsset; };
		public static function get TextureURL():Class { return App.scope.TextureURLAsset; };		
		public static function get Properties():Class { return App.scope.PropertiesAsset; };
		public static function get Animation():Class { return App.scope.AnimationAsset; };
		public static function get AnimationBase():Class { return App.scope.AnimationBaseAsset; };
		public static function get SkeletonAnimation():Class { return App.scope.SkeletonAnimationAsset; };
		public static function get Camera():Class { return App.scope.CameraAsset; };		
		public static function get AssetBase():Class { return App.scope.Asset; };
		public static function get Action():Class { return App.scope.ActionAsset; };
		public static function get ATF():Class { return App.scope.ATFAsset; };
		public static function get Box():Class { return App.scope.BoxAsset; };		
		public static function get ByteCode():Class { return App.scope.ByteCodeAsset; };
		public static function get Capsule():Class { return App.scope.CapsuleAsset; };
		public static function get CollisionSensor():Class { return App.scope.CollisionSensorAsset; };
		public static function get Composite():Class { return App.scope.CompositeAsset; };
		public static function get CubeMapBase():Class { return App.scope.CubeMapBaseAsset; };
		public static function get CubeMapURL():Class { return App.scope.CubeMapURLAsset; };
		public static function get CubeMapATF():Class { return App.scope.CubeMapATFAsset; };
		public static function get CubeRender():Class { return App.scope.CubeRenderAsset; };
		public static function get DirectionalLightAsset():Class { return App.scope.DirectionalLightAsset; };
		public static function get Dummy():Class { return App.scope.DummyAsset; };
		public static function get GeometryBase():Class { return App.scope.GeometryBaseAsset; };
		public static function get Geometry():Class { return App.scope.GeometryAsset; };
		public static function get GeometryShape():Class { return App.scope.GeometryShapeAsset; };
		public static function get GeometryShapeBase():Class { return App.scope.GeometryShapeBaseAsset; };
		public static function get GIF():Class { return App.scope.GIFAsset; };
		public static function get JointObject():Class { return App.scope.JointObjectAsset; };
		public static function get JPEG():Class { return App.scope.JPEGAsset; };
		public static function get JPEGXR():Class { return App.scope.JPEGXRAsset; };
		public static function get KeyFrameAnimation():Class { return App.scope.KeyFrameAnimationAsset; };
		public static function get Light():Class { return App.scope.LightAsset; };
		public static function get Line():Class { return App.scope.LineAsset; };
		public static function get Material():Class { return App.scope.MaterialAsset; };
		public static function get Modifier():Class { return App.scope.ModifierAsset; };
		public static function get MorphAnimation():Class { return App.scope.MorphAnimationAsset; };
		public static function get Morph():Class { return App.scope.MorphAsset; };
		public static function get MP3():Class { return App.scope.MP3Asset; };
		public static function get Container():Class { return App.scope.ContainerAsset; };
		public static function get Object3D():Class { return App.scope.Object3DAsset; };
		public static function get OrthographicCamera():Class { return App.scope.OrthographicCameraAsset; };
		public static function get Particle():Class { return App.scope.ParticleAsset; };
		public static function get ParticleContainer():Class { return App.scope.ParticleContainerAsset; };
		public static function get ParticleContainerBase():Class { return App.scope.ParticleContainerBaseAsset; };
		public static function get PerspectiveCamera():Class { return App.scope.ParticleContainerBaseAsset; };
		public static function get Physics():Class { return App.scope.PhysicsAsset; };
		public static function get PhysicsBase():Class { return App.scope.PhysicsBaseAsset; };
		public static function get PlanarRender():Class { return App.scope.PlanarRenderAsset; };
		public static function get PNG():Class { return App.scope.PNGAsset; };
		public static function get PointLight():Class { return App.scope.PointLightAsset; };
		public static function get PoonyaScript():Class { return App.scope.PoonyaScriptAsset; };
		public static function get RigidBody():Class { return App.scope.RigidBodyAsset; };
		public static function get Script():Class { return App.scope.ScriptAsset; };
		public static function get Shape():Class { return App.scope.ShapeAsset; };		
		public static function get Skeleton():Class { return App.scope.SkeletonAsset; };
		public static function get Sound3D():Class { return App.scope.Sound3DAsset; };
		public static function get Sound():Class { return App.scope.SoundAsset; };
		public static function get SoundMixer():Class { return App.scope.SoundMixerAsset; };
		public static function get SoundPoint():Class { return App.scope.SoundPointAsset; };
		public static function get Sparticle():Class { return App.scope.SparticleAsset; };
		public static function get Sphere():Class { return App.scope.SphereAsset; };
		public static function get Sprite():Class { return App.scope.SpriteAsset; };
		public static function get StandardMaterial():Class { return App.scope.StandardMaterialAsset; };
		public static function get StaticGeometryShape():Class { return App.scope.StaticGeometryShapeAsset; };
		public static function get Texture():Class { return App.scope.TextureAsset; };
		public static function get TextureFile():Class { return App.scope.TextureFileAsset; };
		public static function get UVWAnimation():Class { return App.scope.UVWAnimationAsset; };
		public static function get VertexAnimation():Class { return App.scope.VertexAnimationAsset; };
		
		public static function get FieldObject():Class { return App.scope.FieldObject; };
		public static function get FieldType():Class { return App.scope.FieldType; };
	}
}