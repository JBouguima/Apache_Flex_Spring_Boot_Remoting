package com.jbouguima.remoting.vo.gestionproduit
{

	[RemoteClass(alias="com.jbouguima.remoting.model.gestionproduit.PaiementCheque")]
	[Bindable]
	public class PaiementCheque extends TypePaiement
	{
		public var numeroCheque:String;
		public var dateVersementCheque:Date;

		public function PaiementCheque()
		{
			super();
		}

	}
}
