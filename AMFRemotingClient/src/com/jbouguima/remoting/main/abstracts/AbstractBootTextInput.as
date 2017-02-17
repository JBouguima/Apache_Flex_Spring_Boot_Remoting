package com.jbouguima.remoting.main.abstracts
{
	import com.jbouguima.remoting.main.components.BootstrapTextInput;
	
	import mx.events.FlexEvent;
	
	import spark.components.Group;
	import spark.components.Label;
	
	/**
	 * 
	 * @author: jbouguima
	 *  12/01/2017
	 * 
	 * */
	[Bindable]
	public class AbstractBootTextInput extends Group
	{
		
		private var _label:String;
		private var _text:String;
		private var _prompt:String;
		private var _isEnabled:Boolean = true;
		private var _isNumeric:Boolean;
		
		public var lbl:Label;
		
		public var binput:BootstrapTextInput;
		
		public function AbstractBootTextInput()
		{
			super();
			addEventListener(FlexEvent.CREATION_COMPLETE, init);
		}
		
		public function init(evt:FlexEvent):void
		{

		}
		
		public function set label(value:String):void
		{
			_label = value;
		}
		
		public function get label():String
		{
			return _label;
		}
		
		public function set text(value:String):void
		{
			_text = value;
			binput.text = value;
		}
		
		public function get text():String
		{
			return binput.text;
		}
		
		public function set prompt(value:String):void
		{
			_prompt = value;
		}
		
		public function get prompt():String
		{
			return _prompt;
		}	
		
		public function set isEnabled(value:Boolean):void
		{
			_isEnabled = value;
			binput.enabled = value;
		}
		
		public function get isEnabled():Boolean
		{
			return _isEnabled;
		}
		
		
		public function set isNumeric(value:Boolean):void
		{
			_isNumeric = value;
			if(value){
				binput.restrict = "0-9";
				binput.maxChars = 20;
			}
		}
		
		public function get isNumeric():Boolean
		{
			return _isNumeric;
		}
		
	}
}