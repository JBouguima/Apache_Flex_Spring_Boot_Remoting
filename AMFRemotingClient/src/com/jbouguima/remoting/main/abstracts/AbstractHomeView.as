package com.jbouguima.remoting.main.abstracts
{
	import com.jbouguima.remoting.main.components.HomeButton;
	
	import spark.components.Group;
	
	/**
	 * 
	 * @author: jbouguima
	 *  12/01/2017
	 * 
	 * */
	[Bindable]
	public class AbstractHomeView extends Group
	{
		
		public var homeButton:HomeButton;
		
		public function AbstractHomeView()
		{
			super();
		}
		
		public function intialiser():void
		{
			homeButton.initializMenu();
		}
		
	}
}