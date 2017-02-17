/**
 * 
 * @author Jileni BOUGUIMA
 *
 * 17 janv. 2017
 *
 * crudflexspring / ArticleService.java
 *
 **/
package com.jbouguima.remoting.services;

import java.util.List;

import com.jbouguima.remoting.model.gestionproduit.Article;


public interface ArticleService {

	public List<Article> findArticles();
	public Article findOne(Integer id);
	public Article addArticle(Article article);
	public Article updateArticle(Article article);
	public void deleteArticle(Integer id);
}
