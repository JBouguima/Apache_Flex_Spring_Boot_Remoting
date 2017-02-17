package com.jbouguima.remoting.main.abstracts
{
	import com.jbouguima.remoting.IconesResources;
	
	import flash.events.MouseEvent;
	
	import mx.events.FlexEvent;
	
	import org.fluint.uiImpersonation.flex.FlexEnvironmentBuilder;
	
	import spark.components.Group;
	import spark.effects.Fade;
	
	
	/**
	 * 
	 * @author: jbouguima
	 *  12/01/2017
	 * 
	 * */
	[Bindable]
	public class AbstractCircleButton extends Group
	{
		
		public var buttonColor:uint;
		public var buttonIcone:Class;
		private var _buttonType:String;
		public var fadeOut:Fade;
		public var fadeIn:Fade;
		
		public function AbstractCircleButton()
		{
			super();
			addEventListener(FlexEvent.CREATION_COMPLETE, init);
		}
		
		public function init(evt:FlexEvent):void
		{
			
		}
		
		
		[Inspectable(category="General", enumeration="add,delete,update", defaultValue="add")]
		public function get buttonType():String
		{
			return _buttonType;
		}
		
		public function set buttonType(value:String):void
		{
			this._buttonType = value;
			switch(value)
			{
				case "add":
				{
					buttonColor = 0x3498db;
					buttonIcone = IconesResources.ADD_ICONE;
					break;
				}
				case "delete":
				{
					buttonColor = 0xe74c3c;
					buttonIcone = IconesResources.DELETE_ICONE;
					break;
				}
				case "update":
				{
					buttonColor = 0xf39c12;
					buttonIcone = IconesResources.UPDATE_ICONE;
					break;
				}					
				default:
				{	
					buttonColor = 0x3498db;
					buttonIcone = IconesResources.ADD_ICONE;
					break;
				}
			}
		}
		
		public function onMouseDwnHandler(event:MouseEvent):void
		{
			// TODO Auto-generated method stub
			fadeOut.play();
		}
		
		public function onMouseUpHndlr(event:MouseEvent):void
		{
			// TODO Auto-generated method stub
			fadeIn.play();
		}
	}
}