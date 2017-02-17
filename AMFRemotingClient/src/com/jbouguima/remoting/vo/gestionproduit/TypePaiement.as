package com.jbouguima.remoting.vo.gestionproduit
{

	[RemoteClass(alias="com.jbouguima.remoting.model.gestionproduit.TypePaiement")]
	[Bindable]
	public class TypePaiement
	{

		public var idTypePaiement:Number = 0;
		public var montantPaiement:Number = 0;
		public var dateReception:Date;

		public function TypePaiement()
		{
			super();
		}

	}
}
