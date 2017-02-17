package com.jbouguima.remoting.vo.gestionproduit
{

	[RemoteClass(alias="com.jbouguima.remoting.model.gestionproduit.LigneCommande")]
	[Bindable]
	public class LigneCommande
	{

		public var produit:Produit;
		public var quantite:int = 0;

		public function LigneCommande()
		{
			super();
		}
		
		public function get nomProduit() : String {
			if (produit != null) {
				return produit.nomProduit;
			}
			return "";
		}
		public function get refProduit() : String {
			if (produit != null) {
				return produit.referenceProduit;
			}
			return "";
		}
		public function get codeProduit() : String {
			if (produit != null) {
				return produit.codeProduit;
			}
			return "";
		}
		public function get qteStockProduit() : String {
			if (produit != null) {
				return produit.quantiteStock.toString();
			}
			return "";
		}
		public function get prixVenteProduit() : String {
			if (produit != null) {
				return produit.prixVenteUnitaire.toString();
			}
			return "";
		}
		
		public function get qteSaisie() : String {
			
			return quantite.toString();
		}
	}
}
