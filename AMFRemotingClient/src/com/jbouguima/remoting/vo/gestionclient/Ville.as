package com.jbouguima.remoting.vo.gestionclient
{

	[RemoteClass(alias="com.jbouguima.remoting.model.gestionclient.Ville")]
	[Bindable]
	public class Ville
	{

		public var idVille:Number;
		public var nomVille:String;

		public var codePostale:CodePostale;
		public var gouvernorat:Gouvernorat;

		public function Ville()
		{
			super();
		}

	}
}
