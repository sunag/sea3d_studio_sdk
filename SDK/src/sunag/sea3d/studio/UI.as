package sunag.sea3d.studio
{
	import sunag.sunag;

	use namespace sunag;
	
	public class UI
	{
		sunag static var scope:*;
		sunag static var app:*;
		sunag static var references:Object;
		
		public static function $(args:Object):void
		{
			app = args.app;
			scope = args.scope;	
			references = args.references;
		}
		
		public static function createWindow(title:String, id:String=null):Object { return new scope.Window( app, title, id ); };
		
		public static function get OpenFile():Class { return scope.OpenFile; };
		
		public static function get Table():Class { return scope.Table; };
		public static function get TableButton():Class { return scope.TableButton; };				
		
		public static function get TileView():Class { return scope.TileView; };
		
		public static function get ToolStrip():Class { return scope.ToolStrip; };
		public static function get ToolStripButton():Class { return scope.ToolStripButton; };		
		public static function get ToolStripSplit():Class { return scope.ToolStripSplit; };
				
		public static function get ImageLoader():Class { return scope.ImageLoader; };
		public static function get ProgressCircle():Class { return scope.ProgressCircle; };
		public static function get ImageDescription():Class { return scope.ImageDescription; };
		
		public static function get ContextMenu():Class { return scope.ContextMenu; };
		public static function get ContextMenuButton():Class { return scope.ContextMenuButton; };
		public static function get ContextMenuSplit():Class { return scope.ContextMenuSplit; };
		
		public static function get Button():Class { return scope.Button; };
		
		public static function get DataGrid():Class { return scope.DataGrid; };
		public static function get DataGridColumn():Class { return scope.DataGridColumn; };
		public static function get DataGridItem():Class { return scope.DataGridItem; };
		public static function get DataGridRow():Class { return scope.DataGridRow; };
		public static function get DataGridCheckBox():Class { return scope.DataGridCheckBox; };
		
		public static function get CheckBox():Class { return scope.CheckBox; };		
		public static function get DropDown():Class { return scope.DropDown; };
		
		public static function get Explorer():Class { return scope.Explorer; };		
		public static function get File():Class { return scope.File; };
		public static function get Group():Class { return scope.Group; };
		public static function get Label():Class { return scope.Label; };
		public static function get TextInput():Class { return scope.TextInput; };
		public static function get VerticalScrollbar():Class { return scope.VerticalScrollbar; };
		public static function get HorizontalScrollbar():Class { return scope.HorizontalScrollbar; };
		
		public static function get MenuStrip():Class { return scope.MenuStrip; };
		public static function get MenuStripButton():Class { return scope.MenuStripButton; };
		
		public static function get Shortcut():Class { return scope.Shortcut; };		
		public static function get ScriptArea():Class { return scope.ScriptArea; };
		
		public static function get List():Class { return scope.List; };
		public static function get ListItem():Class { return scope.ListItem; };
		
		public static function get TextTip():Class { return scope.TextTip; };
	}
}