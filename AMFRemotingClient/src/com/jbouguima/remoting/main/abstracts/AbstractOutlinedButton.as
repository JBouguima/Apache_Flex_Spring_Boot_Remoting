package com.jbouguima.remoting.main.abstracts
{
	import flash.events.MouseEvent;
	
	import mx.events.FlexEvent;
	
	import spark.components.Group;
	import spark.components.Label;
	import spark.effects.Fade;
	
	/**
	 * 
	 * @author: jbouguima
	 *  12/01/2017
	 * 
	 * */
	[Bindable]
	public class AbstractOutlinedButton extends Group
	{
		public var fadeIn:Fade;
		public var fadeOut:Fade;
		private var _label:String;
		private var _buttonColor:uint;
		public var btnLbl:Label;
		
		public function AbstractOutlinedButton()
		{
			super();
			addEventListener(FlexEvent.CREATION_COMPLETE, init);
		}
		
		public function init(evt:FlexEvent):void
		{
			
		}
		
		public function btnrollOverHandler(event:MouseEvent):void
		{
			fadeIn.play();
			btnLbl.setStyle('color', 0xffffff);
		}
		
		public function btnrollOutHandler(event:MouseEvent):void
		{
			fadeOut.play();
			btnLbl.setStyle('color', _buttonColor);
		}
		
		public function set label(value:String):void
		{
			_label = value
		}
		
		public function get label():String
		{
			return _label ;
		}
		
		public function set buttonColor(value:uint):void
		{
			_buttonColor = value
		}
		
		public function get buttonColor():uint
		{
			return _buttonColor ;
		}
		
	}
}