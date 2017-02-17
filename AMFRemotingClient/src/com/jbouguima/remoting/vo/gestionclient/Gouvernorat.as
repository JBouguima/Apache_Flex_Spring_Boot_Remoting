package com.jbouguima.remoting.vo.gestionclient
{

	[RemoteClass(alias="com.jbouguima.remoting.model.gestionclient.Gouvernorat")]
	[Bindable]
public class Gouvernorat {

	public var idGouvernorat:Number;
	public var nomGouvernorat:String;

	public function Gouvernorat() {
		super();
	}

}
}