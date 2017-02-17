/**
 * 
 * @author Jileni BOUGUIMA
 *
 * 12 janv. 2017
 *
 * CRUDFlex3Services / PaiementEspece.java
 *
 **/
package com.jbouguima.remoting.model.gestionproduit;

import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;

@Entity
@DiscriminatorValue(value = "PAIEMENT_ESPECE")
public class PaiementEspece  extends TypePaiement{

}
