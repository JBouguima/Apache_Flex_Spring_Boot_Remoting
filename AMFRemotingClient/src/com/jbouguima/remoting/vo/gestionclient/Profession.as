package com.jbouguima.remoting.vo.gestionclient
{

	[RemoteClass(alias="com.jbouguima.remoting.model.gestionclient.Profession")]
	[Bindable]
	public class Profession
	{

		public var idProfession:Number;
		public var libelleProfession:String;

		public function Profession()
		{
			super();
		}

	}
}
