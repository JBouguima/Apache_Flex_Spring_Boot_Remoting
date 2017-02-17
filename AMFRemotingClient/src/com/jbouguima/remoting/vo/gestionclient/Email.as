package com.jbouguima.remoting.vo.gestionclient
{

	[RemoteClass(alias="com.jbouguima.remoting.model.gestionclient.Email")]
	[Bindable]
	public class Email extends Contact
	{

		public var adresseEmail:String;
		public var typeEmail:TypeEmail;

		public function Email()
		{
		}


	}
}
