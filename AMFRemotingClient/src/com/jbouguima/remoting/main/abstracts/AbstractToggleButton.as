package com.jbouguima.remoting.main.abstracts
{
	import flash.events.MouseEvent;
	
	import mx.events.EffectEvent;
	import mx.events.FlexEvent;
	import mx.graphics.SolidColor;
	
	import spark.components.Group;
	import spark.effects.Move;
	
	/**
	 * 
	 * @author: jbouguima
	 *  12/01/2017
	 * 
	 * */
	[Bindable]
	public class AbstractToggleButton extends Group
	{
		
		
		public var backColor:uint = 0x0b8bee;
		public var backColorOff:uint = 0xde6605;
		public var forgColor:uint = 0x8c8f92;
		public var moveRL:Move;
		public var button:Group;
		public var back:SolidColor;
		private var _LValue:String;
		private var _RValue:String;
		public var result:String ;//= RValue;
		
		private var on:Boolean ;
		
		public function AbstractToggleButton()
		{
			super();
			addEventListener(FlexEvent.CREATION_COMPLETE, init);
		}
		
		protected function init(event:FlexEvent):void
		{
			on = true;
		}
		
		public function changeValue(event:MouseEvent):void
		{
			if(on){
				moveRL.xFrom = button.x;
				moveRL.xTo = button.x + 30;
				result = LValue;
			}else {
				moveRL.xFrom = button.x;
				moveRL.xTo = button.x - 30;	
				result = RValue;
			}
			
			
			moveRL.play();
		}
		
		public function reset():void
		{
			if(!on){
				moveRL.xFrom = button.x;
				moveRL.xTo = button.x - 30;	
				result = RValue;
			}
			moveRL.play();
		}
		
		protected function onMoveEnd(event:EffectEvent):void
		{
			if(on){
				back.color = backColorOff;
			}else{
				back.color = backColor;
			}
			on = !on;
		}

		public function set LValue(value:String):void
		{
			_LValue = value;
		}
		
		public function get LValue():String
		{
			return _LValue;
		}
		
		public function set RValue(value:String):void
		{
			_RValue = value;
			result = _RValue;
		}
		
		public function get RValue():String
		{
			return _RValue;
		}
		
		
	}
}