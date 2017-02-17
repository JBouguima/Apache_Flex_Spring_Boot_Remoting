package com.jbouguima.remoting.vo.gestionclient
{
	import com.jbouguima.remoting.vo.gestionproduit.Produit;
	
	import org.hamcrest.mxml.object.Null;
	
	
	public class LigneCommandeVO
	{
		private var _idLigne:Number;
		//private var _nomProduit:String;
		//private var _refProduit:String;
		//private var _codeProduit:String;
		//private var _qteStockProduit:String;
		//private var _prixVenteProduit:Number;
		private var _produit:Produit;
		private var _qteSaisie:Number;
		
		public function set idLigne(value:Number):void
		{
			_idLigne = value;
		}
		
		public function get idLigne():Number
		{
			return _idLigne;
		}

		
		public function set produit(value:Produit):void
		{
			_produit = value;
		}
		
		public function get produit():Produit
		{
			return _produit;
		}
		
		public function set qteSaisie(value:Number):void
		{
			_qteSaisie =value;
		}
		
		public function get nomProduit():String
		{
			return _produit.nomProduit;
		}
		
		public function get refProduit():String
		{
			return _produit.referenceProduit;
		}
		public function get codeProduit():String
		{
			return _produit.codeProduit;
		}
		
		public function get qteStockProduit():Number
		{
			return _produit.quantiteStock;
		}
		
		public function get prixVenteProduit():Number
		{
			return _produit.prixVenteUnitaire;
		}
		
		public function get qteSaisie():Number
		{
			return _qteSaisie;
		}
		
		
	}
}