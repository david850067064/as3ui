package as3ui.framework
{
	import flash.accessibility.AccessibilityProperties;
	import flash.display.DisplayObject;
	import flash.display.DisplayObjectContainer;
	import flash.display.IBitmapDrawable;
	import flash.display.LoaderInfo;
	import flash.display.Stage;
	import flash.events.IEventDispatcher;
	import flash.geom.Point;
	import flash.geom.Rectangle;
	import flash.geom.Transform;	

	public interface IDisplayObject extends IEventDispatcher, IBitmapDrawable
	{
		function addChild(child:DisplayObject):DisplayObject;

		function getBounds(targetCoordinateSpace:DisplayObject):Rectangle;
		function getRect(targetCoordinateSpace:DisplayObject):Rectangle;
		function globalToLocal(point:Point):Point
		function hitTestObject(obj:DisplayObject):Boolean
		function hitTestPoint(x:Number, y:Number, shapeFlag:Boolean = false):Boolean
		function localToGlobal(point:Point):Point;

		function get loaderInfo():LoaderInfo;
		function get parent():DisplayObjectContainer;
		function get stage():Stage;
		function get root():DisplayObject;
		function get mouseX():Number;
		function get mouseY():Number;

		function get alpha():Number;
    	function set alpha(value:Number):void;

    	function get mouseEnabled():Boolean;
    	function set mouseEnabled(value:Boolean):void;

		function get accessibilityProperties():AccessibilityProperties;
    	function set accessibilityProperties(value:AccessibilityProperties):void;

		function get blendMode():String;
    	function set blendMode(value:String):void;

		function get cacheAsBitmap():Boolean;
    	function set cacheAsBitmap(value:Boolean):void;

		function get filters():Array;
    	function set filters(value:Array):void;

		function get height():Number;
    	function set height(value:Number):void;

		function get mask():DisplayObject;
    	function set mask(value:DisplayObject):void;

		function get name():String;
    	function set name(value:String):void;

		function get opaqueBackground():Object;
    	function set opaqueBackground(value:Object):void;

		function get rotation():Number;
    	function set rotation(value:Number):void;

		function get scale9Grid():Rectangle;
    	function set scale9Grid(value:Rectangle):void;

		function get transform():Transform;
    	function set transform(value:Transform):void;

		function get scaleX():Number;
		function set scaleX(value:Number):void;

		function get scaleY():Number;
		function set scaleY(value:Number):void;

		function get scrollRect():Rectangle;
		function set scrollRect(value:Rectangle):void;

		function get visible():Boolean;
    	function set visible(value:Boolean):void;

		function get width():Number;
    	function set width(value:Number):void;

		function get x():Number;
    	function set x(value:Number):void;

		function get y():Number;
    	function set y(value:Number):void;


	}
}
