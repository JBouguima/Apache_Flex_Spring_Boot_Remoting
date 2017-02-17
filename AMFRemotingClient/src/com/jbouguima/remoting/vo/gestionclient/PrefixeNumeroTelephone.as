package com.jbouguima.remoting.vo.gestionclient
{

	[RemoteClass(alias="com.jbouguima.remoting.model.gestionclient.PrefixeNumeroTelephone")]
	[Bindable]
	public class PrefixeNumeroTelephone
	{

		public var idPrefixe:Number;
		public var prefixe:String;
		public var indicateurFixe : Boolean;

		public function PrefixeNumeroTelephone()
		{
			super();
		}

	}
}
