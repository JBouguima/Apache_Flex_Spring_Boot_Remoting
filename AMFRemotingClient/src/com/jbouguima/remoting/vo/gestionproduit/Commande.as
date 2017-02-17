package com.jbouguima.remoting.vo.gestionproduit
{

	import com.jbouguima.remoting.vo.gestionclient.Client;
	
	import mx.collections.ArrayCollection;

	[RemoteClass(alias="com.jbouguima.remoting.model.gestionproduit.Commande")]
	[Bindable]
	public class Commande
	{

		public var idCommande:Number = 0;
		public var dateCommande:Date;
		public var montantTotal:Number = 0;
		public var client:Client;

		public var lignesCommande:ArrayCollection; // Set<LigneCommande>
		public var typePaiement:TypePaiement;

		public function Commande()
		{
			super();
		}
	}
}