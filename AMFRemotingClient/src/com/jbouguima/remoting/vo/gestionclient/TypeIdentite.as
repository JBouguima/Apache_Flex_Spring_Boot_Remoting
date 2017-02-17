package com.jbouguima.remoting.vo.gestionclient
{

	[RemoteClass(alias="com.jbouguima.remoting.model.gestionclient.TypeIdentite")]
	[Bindable]
	public class TypeIdentite
	{

		public var idTypeIdentite:Number;
		public var libelleTypeIdentite:String;

		public function TypeIdentite()
		{
			super();
		}

	}
}
