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
import javax.persistence.Lob;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author rkahar
 */
@Entity
@Table(name = "location_permission")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "LocationPermission.findAll", query = "SELECT l FROM LocationPermission l"),
    @NamedQuery(name = "LocationPermission.findById", query = "SELECT l FROM LocationPermission l WHERE l.id = :id"),
    @NamedQuery(name = "LocationPermission.findByShootApplicationId", query = "SELECT l FROM LocationPermission l WHERE l.shootApplicationId = :shootApplicationId"),
    @NamedQuery(name = "LocationPermission.findByStatus", query = "SELECT l FROM LocationPermission l WHERE l.status = :status"),
    @NamedQuery(name = "LocationPermission.findByAgencyId", query = "SELECT l FROM LocationPermission l WHERE l.agencyId = :agencyId")})
public class LocationPermission implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @Column(name = "shoot_application_id")
    private int shootApplicationId;
    @Basic(optional = false)
    @Column(name = "status")
    private String status;
    @Lob
    @Column(name = "comments")
    private String comments;
    @Basic(optional = false)
    @Column(name = "agency_id")
    private int agencyId;

    public LocationPermission() {
    }

    public LocationPermission(Integer id) {
        this.id = id;
    }

    public LocationPermission(Integer id, int shootApplicationId, String status, int agencyId) {
        this.id = id;
        this.shootApplicationId = shootApplicationId;
        this.status = status;
        this.agencyId = agencyId;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public int getShootApplicationId() {
        return shootApplicationId;
    }

    public void setShootApplicationId(int shootApplicationId) {
        this.shootApplicationId = shootApplicationId;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getComments() {
        return comments;
    }

    public void setComments(String comments) {
        this.comments = comments;
    }

    public int getAgencyId() {
        return agencyId;
    }

    public void setAgencyId(int agencyId) {
        this.agencyId = agencyId;
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
        if (!(object instanceof LocationPermission)) {
            return false;
        }
        LocationPermission other = (LocationPermission) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.creathon.bean.LocationPermission[ id=" + id + " ]";
    }
    
}
