package com.ensa.model;

import java.io.Serializable;
import javax.persistence.*;
@Entity
@org.hibernate.annotations.Proxy(lazy=false)
@Table(name="Comment")
public class Comment implements Serializable {
	public Comment() {
	}
	
	@Column(name="ID", nullable=false)	
	@Id	
	@GeneratedValue(generator="MODEL_COMMENT_ID_GENERATOR")	
	@org.hibernate.annotations.GenericGenerator(name="MODEL_COMMENT_ID_GENERATOR", strategy="native")	
	private int ID;
	
	@ManyToOne(targetEntity=Image.class, fetch=FetchType.LAZY)	
	@org.hibernate.annotations.Cascade({org.hibernate.annotations.CascadeType.LOCK})	
	@JoinColumns({ @JoinColumn(name="ImageID", referencedColumnName="ID", nullable=false) })	
	private Image image;
	
	@ManyToOne(targetEntity=User.class, fetch=FetchType.LAZY)	
	@org.hibernate.annotations.Cascade({org.hibernate.annotations.CascadeType.LOCK})	
	@JoinColumns({ @JoinColumn(name="UserID", referencedColumnName="ID", nullable=false) })	
	private User user;
	
	@Column(name="`Date`", nullable=true)	
	@Temporal(TemporalType.TIMESTAMP)	
	private java.util.Date date;
	
	@Column(name="Text", nullable=true, length=255)	
	private String text;
	
	private void setID(int value) {
		this.ID = value;
	}
	
	public int getID() {
		return ID;
	}
	
	public int getORMID() {
		return getID();
	}
	
	public void setDate(java.util.Date value) {
		this.date = value;
	}
	
	public java.util.Date getDate() {
		return date;
	}
	
	public void setText(String value) {
		this.text = value;
	}
	
	public String getText() {
		return text;
	}
	
	public void setUser(User value) {
		this.user = value;
	}
	
	public User getUser() {
		return user;
	}
	
	public void setImage(Image value) {
		this.image = value;
	}
	
	public Image getImage() {
		return image;
	}
	
	public String toString() {
		return toString(false);
	}
	
	public String toString(boolean idOnly) {
		if (idOnly) {
			return String.valueOf(getID());
		}
		else {
			StringBuffer sb = new StringBuffer();
			sb.append("Comment[ ");
			sb.append("ID=").append(getID()).append(" ");
			if (getImage() != null)
				sb.append("Image.Persist_ID=").append(getImage().toString(true)).append(" ");
			else
				sb.append("Image=null ");
			if (getUser() != null)
				sb.append("User.Persist_ID=").append(getUser().toString(true)).append(" ");
			else
				sb.append("User=null ");
			sb.append("Date=").append(getDate()).append(" ");
			sb.append("Text=").append(getText()).append(" ");
			sb.append("]");
			return sb.toString();
		}
	}
	
}
