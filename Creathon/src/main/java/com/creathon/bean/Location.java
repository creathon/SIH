/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.creathon.bean;

import java.io.Serializable;
import java.util.Collection;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToMany;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author rkahar
 */
@Entity
@Table(name = "location")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Location.findAll", query = "SELECT l FROM Location l"),
    @NamedQuery(name = "Location.findById", query = "SELECT l FROM Location l WHERE l.id = :id"),
    @NamedQuery(name = "Location.findByName", query = "SELECT l FROM Location l WHERE l.name = :name"),
    @NamedQuery(name = "Location.findByAddress", query = "SELECT l FROM Location l WHERE l.address = :address"),
    @NamedQuery(name = "Location.findByType", query = "SELECT l FROM Location l WHERE l.type = :type"),
    @NamedQuery(name = "Location.findByQuote", query = "SELECT l FROM Location l WHERE l.quote = :quote"),
    @NamedQuery(name = "Location.findByAgencyId", query = "SELECT l FROM Location l WHERE l.agencyId = :agencyId")})
public class Location implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @Column(name = "name")
    private String name;
    @Basic(optional = false)
    @Column(name = "address")
    private int address;
    @Basic(optional = false)
    @Column(name = "type")
    private int type;
    @Lob
    @Column(name = "description")
    private String description;
    @Lob
    @Column(name = "photo")
    private String photo;
    @Basic(optional = false)
    @Column(name = "quote")
    private String quote;
    
    @Lob
    @Column(name = "img_description")
    private String imgDescription;
    
    @Basic(optional = false)
    @Column(name = "agency_id")
    private int agencyId;
    
    @ManyToMany(mappedBy = "locationCollection")
    private Collection<Agency> agencyCollection;
    
    @OneToOne(cascade = CascadeType.ALL, mappedBy = "location")
    private LocationPhotos locationPhotos;
    @JoinColumn(name = "id", referencedColumnName = "id", insertable = false, updatable = false)
    @OneToOne(optional = false)
    private Agency agency;

    public Location() {
    }

    public Location(Integer id) {
        this.id = id;
    }

    public Location(Integer id, String name, int address, int type, String quote, int agencyId) {
        this.id = id;
        this.name = name;
        this.address = address;
        this.type = type;
        this.quote = quote;
        this.agencyId = agencyId;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAddress() {
        return address;
    }

    public void setAddress(int address) {
        this.address = address;
    }

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public String getQuote() {
        return quote;
    }

    public void setQuote(String quote) {
        this.quote = quote;
    }

    public String getImgDescription() {
        return imgDescription;
    }

    public void setImgDescription(String imgDescription) {
        this.imgDescription = imgDescription;
    }

    public int getAgencyId() {
        return agencyId;
    }

    public void setAgencyId(int agencyId) {
        this.agencyId = agencyId;
    }

    @XmlTransient
    public Collection<Agency> getAgencyCollection() {
        return agencyCollection;
    }

    public void setAgencyCollection(Collection<Agency> agencyCollection) {
        this.agencyCollection = agencyCollection;
    }

    public LocationPhotos getLocationPhotos() {
        return locationPhotos;
    }

    public void setLocationPhotos(LocationPhotos locationPhotos) {
        this.locationPhotos = locationPhotos;
    }

    public Agency getAgency() {
        return agency;
    }

    public void setAgency(Agency agency) {
        this.agency = agency;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Location)) {
            return false;
        }
        Location other = (Location) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.creathon.bean.Location[ id=" + id + " ]";
    }
    
}
