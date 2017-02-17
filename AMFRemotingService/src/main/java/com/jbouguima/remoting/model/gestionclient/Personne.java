/**
 * 
 * @author Jileni BOUGUIMA
 *
 * 12 janv. 2017
 *
 * CRUDFlex3Services / Personne.java
 *
 **/
package com.jbouguima.remoting.model.gestionclient;

import java.util.Date;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.DiscriminatorColumn;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "personne")
@Inheritance(strategy = InheritanceType.SINGLE_TABLE)
@DiscriminatorColumn(name = "PERSON_TYPE")
public abstract class Personne {

	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	public Integer idPersonne;
	public String nom;
	public String prenom;
	public Date dateNaissance;
	public String sexe;
	@ManyToOne(cascade=CascadeType.PERSIST)
	@JoinColumn(name = "adresse_id_adresse")
	public Adresse adresse;
	@ManyToOne(cascade=CascadeType.PERSIST)
	@JoinColumn(name = "profession_id_professio")
	public Profession profession;

	@OneToMany(fetch = FetchType.EAGER, cascade=CascadeType.PERSIST)
	@JoinColumn(name="identites_id_identite")
	public Set<IdentitePersonne> identites; // 
	@OneToMany(fetch = FetchType.EAGER, cascade=CascadeType.PERSIST)
	@JoinColumn(name="contacts_id_contact")
	public Set<Contact> contacts; // 
	/**
	 * @return the idPersonne
	 */
	public Integer getIdPersonne() {
		return idPersonne;
	}
	/**
	 * @param idPersonne the idPersonne to set
	 */
	public void setIdPersonne(Integer idPersonne) {
		this.idPersonne = idPersonne;
	}
	/**
	 * @return the nom
	 */
	public String getNom() {
		return nom;
	}
	/**
	 * @param nom the nom to set
	 */
	public void setNom(String nom) {
		this.nom = nom;
	}
	/**
	 * @return the prenom
	 */
	public String getPrenom() {
		return prenom;
	}
	/**
	 * @param prenom the prenom to set
	 */
	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}
	/**
	 * @return the dateNaissance
	 */
	public Date getDateNaissance() {
		return dateNaissance;
	}
	/**
	 * @param dateNaissance the dateNaissance to set
	 */
	public void setDateNaissance(Date dateNaissance) {
		this.dateNaissance = dateNaissance;
	}
	/**
	 * @return the sexe
	 */
	public String getSexe() {
		return sexe;
	}
	/**
	 * @param sexe the sexe to set
	 */
	public void setSexe(String sexe) {
		this.sexe = sexe;
	}
	/**
	 * @return the adresse
	 */
	public Adresse getAdresse() {
		return adresse;
	}
	/**
	 * @param adresse the adresse to set
	 */
	public void setAdresse(Adresse adresse) {
		this.adresse = adresse;
	}
	/**
	 * @return the profession
	 */
	public Profession getProfession() {
		return profession;
	}
	/**
	 * @param profession the profession to set
	 */
	public void setProfession(Profession profession) {
		this.profession = profession;
	}
	/**
	 * @return the identites
	 */
	public Set<IdentitePersonne> getIdentites() {
		return identites;
	}
	/**
	 * @param identites the identites to set
	 */
	public void setIdentites(Set<IdentitePersonne> identites) {
		this.identites = identites;
	}
	/**
	 * @return the contacts
	 */
	public Set<Contact> getContacts() {
		return contacts;
	}
	/**
	 * @param contacts the contacts to set
	 */
	public void setContacts(Set<Contact> contacts) {
		this.contacts = contacts;
	}

	

}
