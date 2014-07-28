package sunag.sea3d.studio
{
	import flash.display.Sprite;
	
	public class ContentSprite extends Sprite
	{
		protected var _x:int = 0;
		protected var _y:int = 0;
		protected var _width:int = 0;
		protected var _height:int = 0;
		
		public var onResize:Function = null;
		
		public override function set x(value:Number):void
		{
			super.x = Math.round(_x=value);			
		}
		
		public override function get x():Number
		{
			return _x;
		}
		
		public override function set y(value:Number):void
		{
			super.y = Math.round(_y=value);			
		}
		
		public override function get y():Number
		{
			return _y;
		}
		
		public override function set width(value:Number):void
		{
			if (_width == int(value)) return;
			_width = int(value);
			if (onResize) onResize();
		}
		
		public override function get width():Number
		{
			return _width;
		}
		
		public override function set height(value:Number):void
		{
			if (_height == int(value)) return;
			_height = int(value);
			if (onResize) onResize();
		}
		
		public override function get height():Number
		{
			return _height;
		}
	}
}