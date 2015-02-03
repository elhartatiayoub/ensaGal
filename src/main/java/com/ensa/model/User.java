package com.ensa.model;

import java.io.Serializable;
import javax.persistence.*;

@Entity
@org.hibernate.annotations.Proxy(lazy = false)
@Table(name = "`User`")
public class User implements Serializable {

    public User() {
    }

    @Column(name = "ID", nullable = false)
    @Id
    @GeneratedValue(generator = "MODEL_USER_ID_GENERATOR")
    @org.hibernate.annotations.GenericGenerator(name = "MODEL_USER_ID_GENERATOR", strategy = "native")
    private int ID;

    @ManyToOne(targetEntity = Role.class, fetch = FetchType.LAZY)
    @org.hibernate.annotations.Cascade({org.hibernate.annotations.CascadeType.LOCK})
    @JoinColumns({
        @JoinColumn(name = "RoleID", referencedColumnName = "ID", nullable = false)})
    private Role role;

    @Column(name = "Name", nullable = true, length = 255)
    private String name;

    @Column(name = "PassHash", nullable = true, length = 255)
    private String passHash;

    @Column(name = "Website", nullable = true, length = 255)
    private String website;

    @Column(name = "Avatar", nullable = true, length = 255)
    private String avatar;

    @Column(name = "Description", nullable = true, length = 255)
    private String description;

    @Column(name = "Email", nullable = true, length = 255)
    private String email;

    @OneToMany(targetEntity = Image.class)
    @org.hibernate.annotations.Cascade({org.hibernate.annotations.CascadeType.SAVE_UPDATE, org.hibernate.annotations.CascadeType.LOCK})
    @JoinColumns({
        @JoinColumn(name = "UserID", nullable = false)})
    @org.hibernate.annotations.LazyCollection(org.hibernate.annotations.LazyCollectionOption.EXTRA)
    private java.util.Set<Image> images = new java.util.HashSet<Image>();

    @OneToMany(mappedBy = "user", targetEntity = Comment.class)
    @org.hibernate.annotations.Cascade({org.hibernate.annotations.CascadeType.SAVE_UPDATE, org.hibernate.annotations.CascadeType.LOCK})
    @org.hibernate.annotations.LazyCollection(org.hibernate.annotations.LazyCollectionOption.EXTRA)
    private java.util.Set comment = new java.util.HashSet();

    private void setID(int value) {
        this.ID = value;
    }

    public int getID() {
        return ID;
    }

    public int getORMID() {
        return getID();
    }

    public void setName(String value) {
        this.name = value;
    }

    public String getName() {
        return name;
    }

    public void setPassHash(String value) {
        this.passHash = value;
    }

    public String getPassHash() {
        return passHash;
    }

    public void setWebsite(String value) {
        this.website = value;
    }

    public String getWebsite() {
        return website;
    }

    public void setAvatar(String value) {
        this.avatar = value;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setDescription(String value) {
        this.description = value;
    }

    public String getDescription() {
        return description;
    }

    public void setEmail(String value) {
        this.email = value;
    }

    public String getEmail() {
        return email;
    }

    public void setRole(Role value) {
        this.role = value;
    }

    public Role getRole() {
        return role;
    }

    public void setImages(java.util.Set value) {
        this.images = value;
    }

    public void addImage(Image value) {
        this.images.add(value);
    }

    public java.util.Set getImages() {
        return images;
    }

    public void setComment(java.util.Set value) {
        this.comment = value;
    }

    public java.util.Set getComment() {
        return comment;
    }

    public String toString() {
        return toString(false);
    }

    public String toString(boolean idOnly) {
        if (idOnly) {
            return String.valueOf(getID());
        } else {
            StringBuffer sb = new StringBuffer();
            sb.append("User[ ");
            sb.append("ID=").append(getID()).append(" ");
            if (getRole() != null) {
                sb.append("Role.Persist_ID=").append(getRole().toString(true)).append(" ");
            } else {
                sb.append("Role=null ");
            }
            sb.append("Name=").append(getName()).append(" ");
            sb.append("PassHash=").append(getPassHash()).append(" ");
            sb.append("Website=").append(getWebsite()).append(" ");
            sb.append("Avatar=").append(getAvatar()).append(" ");
            sb.append("Description=").append(getDescription()).append(" ");
            sb.append("Email=").append(getEmail()).append(" ");
            sb.append("Images.size=").append(getImages().size()).append(" ");
            sb.append("Comment.size=").append(getComment().size()).append(" ");
            sb.append("]");
            return sb.toString();
        }
    }

}
