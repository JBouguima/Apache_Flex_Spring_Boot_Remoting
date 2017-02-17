package com.jbouguima.remoting.vo.gestionproduit
{
	import mx.collections.ArrayCollection;

	[RemoteClass(alias="com.jbouguima.remoting.model.gestionproduit.Produit")]
	[Bindable]
	public class Produit
	{

		public var idProduit:Number;
		public var nomProduit:String;
		public var codeProduit:String;
		public var referenceProduit:String;
		public var quantiteStock:Number = 0;
		public var prixVenteUnitaire:Number = 0;

		public var articles:ArrayCollection; // Set<Article>

		public function Produit()
		{
			super();
		}
	}
}