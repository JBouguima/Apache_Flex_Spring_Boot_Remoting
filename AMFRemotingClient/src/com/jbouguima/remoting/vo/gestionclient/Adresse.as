package com.jbouguima.remoting.vo.gestionclient
{

	[RemoteClass(alias="com.jbouguima.remoting.model.gestionclient.Adresse")]
	[Bindable]
	public class Adresse
	{

		public var idAdresse:Number;
		public var nomRue:String;
		public var gouvernorat:Gouvernorat;


		public function Adresse()
		{
			super();
		}


	}
}
