package com.jbouguima.remoting.vo.gestionproduit
{

	[RemoteClass(alias="com.jbouguima.remoting.model.gestionproduit.Article")]
	[Bindable]
	public class Article
	{

		public var idArticle:Number = 0;
		public var codeArticle:String;
		public var dateCreation:Date;

		public function Article()
		{
			super();
		}
	}
}
