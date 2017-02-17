package com.jbouguima.remoting.vo.gestionclient
{

	[RemoteClass(alias="com.jbouguima.remoting.model.gestionclient.IdentitePersonne")]
	[Bindable]
	public class IdentitePersonne
	{

		public var idIdentite:Number;
		public var typeIdentite:TypeIdentite;
		public var numeroIdentite:String;
		public var dateDelivrance:Date;
		public var identitePrincipale:Boolean;

		public function IdentitePersonne()
		{
			super();
		}

	}
}
