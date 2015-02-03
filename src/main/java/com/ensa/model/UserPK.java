/**
 * "Visual Paradigm: DO NOT MODIFY THIS FILE!"
 * 
 * This is an automatic generated file. It will be regenerated every time 
 * you generate persistence class.
 * 
 * Modifying its content may cause the program not work, or your work may lost.
 */

/**
 * Licensee: 
 * License Type: Evaluation
 */
package com.ensa.model;

import java.io.Serializable;
import javax.persistence.*;
@Embeddable
public class UserPK implements Serializable {
	public boolean equals(Object aObj) {
		if (aObj == this)
			return true;
		if (!(aObj instanceof UserPK))
			return false;
		UserPK userpk = (UserPK)aObj;
		if ((getEmail() != null && !getEmail().equals(userpk.getEmail())) || (getEmail() == null && userpk.getEmail() != null))
			return false;
		if (getID() != userpk.getID())
			return false;
		return true;
	}
	
	public int hashCode() {
		int hashcode = 0;
		hashcode = hashcode + (getEmail() == null ? 0 : getEmail().hashCode());
		hashcode = hashcode + (int) getID();
		return hashcode;
	}
	
	@Column(name="Email", nullable=false)	
	private String email;
	
	public void setEmail(String value)  {
		this.email =  value;
	}
	
	public String getEmail()  {
		return this.email;
	}
	
	@Column(name="ID", nullable=false)	
	private int ID;
	
	public void setID(int value)  {
		this.ID =  value;
	}
	
	public int getID()  {
		return this.ID;
	}
	
}
