package com.jbouguima.remoting.vo.gestionclient
{
	import mx.collections.ArrayCollection;


	[RemoteClass(alias="com.jbouguima.remoting.model.gestionclient.Personne")]
	[Bindable]
	public class Personne
	{

		public var idPersonne:Number;
		public var nom:String;
		public var prenom:String;
		public var dateNaissance:Date;
		public var sexe:String;
		public var adresse:Adresse;
		public var profession:Profession;

		public var identites:ArrayCollection; // Set<IdentitePersonne>
		public var contacts:ArrayCollection; // Set<Contact>


		public function Personne()
		{
			super();
		}


	}
}