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
		public static function get Properties():Class { return UI.scope.PropertiesAsset; };
		public static function get Animation():Class { return UI.scope.AnimationAsset; };
		public static function get AnimationBase():Class { return UI.scope.AnimationBaseAsset; };
		public static function get SkeletonAnimation():Class { return UI.scope.SkeletonAnimationAsset; };
		public static function get Camera():Class { return UI.scope.CameraAsset; };		
		public static function get AssetBase():Class { return UI.scope.Asset; };
		public static function get Action():Class { return UI.scope.ActionAsset; };
		public static function get ATF():Class { return UI.scope.ATFAsset; };
		public static function get Box():Class { return UI.scope.BoxAsset; };		
		public static function get ByteCode():Class { return UI.scope.ByteCodeAsset; };
		public static function get Capsule():Class { return UI.scope.CapsuleAsset; };
		public static function get CollisionSensor():Class { return UI.scope.CollisionSensorAsset; };
		public static function get Composite():Class { return UI.scope.CompositeAsset; };
		public static function get CubeMapBase():Class { return UI.scope.CubeMapBaseAsset; };
		public static function get CubeMapURL():Class { return UI.scope.CubeMapURLAsset; };
		public static function get CubeMapATF():Class { return UI.scope.CubeMapATFAsset; };
		public static function get CubeRender():Class { return UI.scope.CubeRenderAsset; };
		public static function get DirectionalLightAsset():Class { return UI.scope.DirectionalLightAsset; };
		public static function get Dummy():Class { return UI.scope.DummyAsset; };
		public static function get GeometryBase():Class { return UI.scope.GeometryBaseAsset; };
		public static function get Geometry():Class { return UI.scope.GeometryAsset; };
		public static function get GeometryShape():Class { return UI.scope.GeometryShapeAsset; };
		public static function get GeometryShapeBase():Class { return UI.scope.GeometryShapeBaseAsset; };
		public static function get GIF():Class { return UI.scope.GIFAsset; };
		public static function get JointObject():Class { return UI.scope.JointObjectAsset; };
		public static function get JPEG():Class { return UI.scope.JPEGAsset; };
		public static function get JPEGXR():Class { return UI.scope.JPEGXRAsset; };
		public static function get KeyFrameAnimation():Class { return UI.scope.KeyFrameAnimationAsset; };
		public static function get Light():Class { return UI.scope.LightAsset; };
		public static function get Line():Class { return UI.scope.LineAsset; };
		public static function get Material():Class { return UI.scope.MaterialAsset; };
		public static function get Modifier():Class { return UI.scope.ModifierAsset; };
		public static function get MorphAnimation():Class { return UI.scope.MorphAnimationAsset; };
		public static function get Morph():Class { return UI.scope.MorphAsset; };
		public static function get MP3():Class { return UI.scope.MP3Asset; };
		public static function get Object3D():Class { return UI.scope.Object3DAsset; };
		public static function get OrthographicCamera():Class { return UI.scope.OrthographicCameraAsset; };
		public static function get Particle():Class { return UI.scope.ParticleAsset; };
		public static function get ParticleContainer():Class { return UI.scope.ParticleContainerAsset; };
		public static function get ParticleContainerBase():Class { return UI.scope.ParticleContainerBaseAsset; };
		public static function get PerspectiveCamera():Class { return UI.scope.ParticleContainerBaseAsset; };
		public static function get Physics():Class { return UI.scope.PhysicsAsset; };
		public static function get PhysicsBase():Class { return UI.scope.PhysicsBaseAsset; };
		public static function get PlanarRender():Class { return UI.scope.PlanarRenderAsset; };
		public static function get PNG():Class { return UI.scope.PNGAsset; };
		public static function get PointLight():Class { return UI.scope.PointLightAsset; };
		public static function get PoonyaScript():Class { return UI.scope.PoonyaScriptAsset; };
		public static function get RigidBody():Class { return UI.scope.RigidBodyAsset; };
		public static function get Script():Class { return UI.scope.ScriptAsset; };
		public static function get Shape():Class { return UI.scope.ShapeAsset; };		
		public static function get Skeleton():Class { return UI.scope.SkeletonAsset; };
		public static function get Sound3D():Class { return UI.scope.Sound3DAsset; };
		public static function get Sound():Class { return UI.scope.SoundAsset; };
		public static function get SoundMixer():Class { return UI.scope.SoundMixerAsset; };
		public static function get SoundPoint():Class { return UI.scope.SoundPointAsset; };
		public static function get Sparticle():Class { return UI.scope.SparticleAsset; };
		public static function get Sphere():Class { return UI.scope.SphereAsset; };
		public static function get Sprite():Class { return UI.scope.SpriteAsset; };
		public static function get StandardMaterial():Class { return UI.scope.StandardMaterialAsset; };
		public static function get StaticGeometryShape():Class { return UI.scope.StaticGeometryShapeAsset; };
		public static function get Texture():Class { return UI.scope.TextureAsset; };
		public static function get TextureFile():Class { return UI.scope.TextureFileAsset; };
		public static function get UVWAnimation():Class { return UI.scope.UVWAnimationAsset; };
		public static function get VertexAnimation():Class { return UI.scope.VertexAnimationAsset; };
		
		public static function get FieldObject():Class { return UI.scope.FieldObject; };
		public static function get FieldType():Class { return UI.scope.FieldType; };
	}
}