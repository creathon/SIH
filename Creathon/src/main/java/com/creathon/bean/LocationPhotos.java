/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.creathon.bean;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author rkahar
 */
@Entity
@Table(name = "location_photos")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "LocationPhotos.findAll", query = "SELECT l FROM LocationPhotos l"),
    @NamedQuery(name = "LocationPhotos.findById", query = "SELECT l FROM LocationPhotos l WHERE l.id = :id"),
    @NamedQuery(name = "LocationPhotos.findByLocationId", query = "SELECT l FROM LocationPhotos l WHERE l.locationId = :locationId"),
    @NamedQuery(name = "LocationPhotos.findByPhoto", query = "SELECT l FROM LocationPhotos l WHERE l.photo = :photo"),
    @NamedQuery(name = "LocationPhotos.findByTag", query = "SELECT l FROM LocationPhotos l WHERE l.tag = :tag")})
public class LocationPhotos implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @Column(name = "location_id")
    private int locationId;
    @Basic(optional = false)
    @Column(name = "photo")
    private int photo;
    @Basic(optional = false)
    @Column(name = "tag")
    private String tag;
    @JoinColumn(name = "id", referencedColumnName = "id", insertable = false, updatable = false)
    @OneToOne(optional = false)
    private Location location;

    public LocationPhotos() {
    }

    public LocationPhotos(Integer id) {
        this.id = id;
    }

    public LocationPhotos(Integer id, int locationId, int photo, String tag) {
        this.id = id;
        this.locationId = locationId;
        this.photo = photo;
        this.tag = tag;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public int getLocationId() {
        return locationId;
    }

    public void setLocationId(int locationId) {
        this.locationId = locationId;
    }

    public int getPhoto() {
        return photo;
    }

    public void setPhoto(int photo) {
        this.photo = photo;
    }

    public String getTag() {
        return tag;
    }

    public void setTag(String tag) {
        this.tag = tag;
    }

    public Location getLocation() {
        return location;
    }

    public void setLocation(Location location) {
        this.location = location;
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
        if (!(object instanceof LocationPhotos)) {
            return false;
        }
        LocationPhotos other = (LocationPhotos) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.creathon.bean.LocationPhotos[ id=" + id + " ]";
    }
    
}
