package com.jbouguima.remoting.main.testdata
{

	
	import com.jbouguima.remoting.vo.gestionclient.Adresse;
	import com.jbouguima.remoting.vo.gestionclient.Client;
	import com.jbouguima.remoting.vo.gestionclient.Gouvernorat;
	import com.jbouguima.remoting.vo.gestionclient.Profession;
	
	import mx.collections.ArrayCollection;

	public class ClientData
	{
		
		public static var clientList:ArrayCollection;
		
		public static function buildClientList():ArrayCollection
		{
			if(!clientList){
				var gov1:Gouvernorat = new Gouvernorat();
				gov1.nomGouvernorat = "Tunis";
				var ad1:Adresse = new Adresse();
				ad1.nomRue = "14 Janvier";
				ad1.gouvernorat = gov1;
				
				var gov2:Gouvernorat = new Gouvernorat();
				gov2.nomGouvernorat = "Bizerte";
				var ad2:Adresse = new Adresse();
				ad2.nomRue = "H. Bourguiba";
				ad2.gouvernorat = gov2;
				
				var prof1:Profession = new Profession();
				prof1.libelleProfession = "Avocat";
				
				var prof2:Profession = new Profession();
				prof2.libelleProfession = "Developer";
				
				clientList = new ArrayCollection();
				var client1:Client = new Client();
				client1.nom = "Albert";
				client1.prenom = "Franks";
				client1.codeClient = "A0001";
				client1.adresse = ad1;
				client1.profession = prof1;
					
				var client2:Client = new Client();
				client2.nom = "Andre";
				client2.prenom = "Prost";
				client2.codeClient = "BC003";
				client2.adresse = ad2;
				client2.profession = prof2;
				
				var client3:Client = new Client();
				client3.nom = "Franz";
				client3.prenom = "Kafka";
				client3.codeClient = "FF036";
				client3.adresse = ad2;
				client3.profession = prof2;
				
				var client4:Client = new Client();
				client4.nom = "George";
				client4.prenom = "Orwell";
				client4.codeClient = "XC089";
				client4.adresse = ad2;
				client4.profession = prof1;
				
				var client5:Client = new Client();
				client5.nom = "Julian";
				client5.prenom = "Barns";
				client5.codeClient = "VWX12";
				client5.adresse = ad1;
				client5.profession = prof2;
				
				var client6:Client = new Client();
				client6.nom = "Feodor";
				client6.prenom = "Dostoe";
				client6.codeClient = "T8875";
				client6.adresse = ad2;
				client6.profession = prof1;
				
				clientList.addItem(client1);
				clientList.addItem(client2);
				clientList.addItem(client3);
				clientList.addItem(client4);
				clientList.addItem(client5);
				clientList.addItem(client6);
			}
			
			return clientList;
		}
	}
}