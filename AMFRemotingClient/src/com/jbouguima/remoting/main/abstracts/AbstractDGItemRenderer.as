package com.jbouguima.remoting.main.abstracts
{
	import com.jbouguima.remoting.vo.gestionproduit.LigneCommande;
	
	import spark.components.Label;
	import spark.components.gridClasses.GridItemRenderer;
	
	
	/**
	 * 
	 * @author: jbouguima
	 *  12/01/2017
	 * 
	 * */
	[Bindable]
	public class AbstractDGItemRenderer extends GridItemRenderer
	{
		public var lblData:Label;
		
		public function AbstractDGItemRenderer()
		{
			super();
		}
		
		override public function prepare(hasBeenRecycled:Boolean):void 
		{
			if(data){
				lblData.text = data[column.dataField];
			}
		}
	}
}