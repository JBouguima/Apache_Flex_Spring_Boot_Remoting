package com.jbouguima.remoting.vo.gestionclient
{

	[RemoteClass(alias="com.jbouguima.remoting.model.gestionclient.Telephone")]
	[Bindable]
	public class Telephone extends Contact
	{

		public var numeroTelephone:String;
		public var operateurTelephonique:OperateurTelephonique;

		public function Telephone()
		{
		}

	}
}
