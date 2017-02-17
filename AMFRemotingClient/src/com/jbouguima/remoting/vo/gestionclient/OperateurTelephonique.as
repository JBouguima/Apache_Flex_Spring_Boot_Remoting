package com.jbouguima.remoting.vo.gestionclient
{
	import mx.collections.ArrayCollection;

	[RemoteClass(alias="com.jbouguima.remoting.model.gestionclient.OperateurTelephonique")]
	[Bindable]
	public class OperateurTelephonique
	{

		public var idOperateurTelephonique:Number;
		public var nomOperateurTelephonique:String;

		public var prefixes:ArrayCollection; //  Set<PrefixeNumeroTelephone>

		public function OperateurTelephonique()
		{
			super();
		}

	}
}
