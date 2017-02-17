package com.jbouguima.remoting.vo.gestionclient
{

	[RemoteClass(alias="com.jbouguima.remoting.model.gestionclient.Client")]
	[Bindable]
	public class Client extends Personne
	{

		public var codeClient:String;

		public function Client()
		{
		}


	}
}
