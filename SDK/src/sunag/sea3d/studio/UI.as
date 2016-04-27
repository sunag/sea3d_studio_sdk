package sunag.sea3d.studio
{
	import flash.display.Bitmap;
	import flash.display.DisplayObject;
	import flash.display.Sprite;
	
	import sunag.sunag;

	use namespace sunag;
	
	public class UI
	{
		public static function createWindow(title:String, id:String = null):Object { return new App.scope.Window( App.app, title, id ); };
		
		public static function addImportButton(button:Object):void { App.scope.addImportButton( App.app, button ); };
		public static function removeImportButton(button:Object):void { App.scope.removeImportButton( App.app, button ); };
		
		public static function addExportButton(button:Object):void { App.scope.addExportButton( App.app, button ); };
		public static function removeExportButton(button:Object):void { App.scope.removeExportButton( App.app, button ); };
		
		public static function addToolButton(button:Object):void { App.scope.addToolButton( App.app, button ); };
		public static function removeToolButton(button:Object):void { App.scope.removeToolButton( App.app, button ); };
		
		public static function addMenuStrip(menu:Object):void { App.scope.addMenuStrip( App.app, menu ); };
		public static function removeMenuStrip(menu:Object):void { App.scope.removeMenuStrip( App.app, menu ); };
		
		public static function addAssetMenu(menu:Object):void { App.scope.addAssetMenu( App.app, menu ); };
		public static function removeAssetMenu(menu:Object):void { App.scope.removeAssetMenu( App.app, menu ); };
		
		public static function addWorkspace(name:String, xml:XML, icon:DisplayObject=null):void { App.scope.addWorkspace( App.app, name, xml, icon ); };
		public static function removeWorkspace(name:String):void { App.scope.removeAssetMenu( App.app, name ); };
		
		public static function setWorkspace(name:String, xml:XML):void { App.scope.setWorkspace(App.app, name, xml); }
		public static function getWorkspace(name:String):XML { return App.scope.getWorkspace(App.app, name); }
		
		public static function get FileIO():Class { return App.scope.FileIO; };
		public static function get SaveFile():Class { return App.scope.SaveFile; };
		public static function get OpenFile():Class { return App.scope.OpenFile; };
		
		public static function get Table():Class { return App.scope.Table; };
		public static function get TableButton():Class { return App.scope.TableButton; };				
		
		public static function get TileView():Class { return App.scope.TileView; };
		
		public static function get ToolStrip():Class { return App.scope.ToolStrip; };
		public static function get ToolStripButton():Class { return App.scope.ToolStripButton; };		
		public static function get ToolStripSplit():Class { return App.scope.ToolStripSplit; };
				
		public static function get ImageLoader():Class { return App.scope.ImageLoader; };
		public static function get ProgressCircle():Class { return App.scope.ProgressCircle; };
		public static function get ImageDescription():Class { return App.scope.ImageDescription; };
		
		public static function get ContextMenu():Class { return App.scope.ContextMenu; };
		public static function get ContextMenuButton():Class { return App.scope.ContextMenuButton; };
		public static function get ContextMenuSplit():Class { return App.scope.ContextMenuSplit; };
		
		public static function get Button():Class { return App.scope.Button; };
		
		public static function get DataGrid():Class { return App.scope.DataGrid; };
		public static function get DataGridColumn():Class { return App.scope.DataGridColumn; };
		public static function get DataGridItem():Class { return App.scope.DataGridItem; };
		public static function get DataGridNumber():Class { return App.scope.DataGridNumber; };		
		public static function get DataGridRow():Class { return App.scope.DataGridRow; };
		public static function get DataGridCheckBox():Class { return App.scope.DataGridCheckBox; };
		
		public static function get CheckBox():Class { return App.scope.CheckBox; };		
		public static function get DropDown():Class { return App.scope.DropDown; };
		
		public static function get Explorer():Class { return App.scope.Explorer; };		
		public static function get File():Class { return App.scope.File; };
		public static function get Group():Class { return App.scope.Group; };
		public static function get Label():Class { return App.scope.Label; };
		public static function get TextInput():Class { return App.scope.TextInput; };
		public static function get VerticalScrollbar():Class { return App.scope.VerticalScrollbar; };
		public static function get HorizontalScrollbar():Class { return App.scope.HorizontalScrollbar; };
		
		public static function get MenuStrip():Class { return App.scope.MenuStrip; };
		public static function get MenuStripButton():Class { return App.scope.MenuStripButton; };
		
		public static function get Shortcut():Class { return App.scope.Shortcut; };		
		public static function get ScriptArea():Class { return App.scope.ScriptArea; };
		
		public static function get List():Class { return App.scope.List; };
		public static function get ListItem():Class { return App.scope.ListItem; };
		
		public static function get TextTip():Class { return App.scope.TextTip; };
		
		public static function get view3d():Sprite
		{
			return App.scope.getView3d(App.app);
		}

		public static function get front():Sprite
		{
			return App.scope.getFront(App.app);
		}
		
		public static function addAssetContext(assetClass:Class, callback:Function):void
		{
			App.scope.addAssetContext(App.app, assetClass, callback);
		}
		
		public static function setPublishPreset(name:String, settings:Object):void
		{
			App.scope.setPublishPreset(App.app, name, settings);
		}
		
		public static function setPublishSetting(name:String, value:*, callback:Function):void
		{
			App.scope.setPublishSetting(App.app, name, value, callback);
		}
		
		public static function getIcon(name:String):Bitmap
		{
			return App.scope.getIcon(App.app, name);
		}
		
		public static function confirm(message:String, confirm:Function, cancel:Function=null):void
		{
			App.scope.confirm(App.app, message, confirm, cancel);
		}
		
		public static function alert(message:String):void
		{
			App.scope.alert(App.app, message);
		}
	}
}