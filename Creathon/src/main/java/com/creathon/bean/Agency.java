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
import javax.persistence.JoinTable;
import javax.persistence.Lob;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
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
@Table(name = "agency")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Agency.findAll", query = "SELECT a FROM Agency a"),
    @NamedQuery(name = "Agency.findById", query = "SELECT a FROM Agency a WHERE a.id = :id"),
    @NamedQuery(name = "Agency.findByAgencyName", query = "SELECT a FROM Agency a WHERE a.agencyName = :agencyName"),
    @NamedQuery(name = "Agency.findByEmail", query = "SELECT a FROM Agency a WHERE a.email = :email"),
    @NamedQuery(name = "Agency.findByRepresentativeName", query = "SELECT a FROM Agency a WHERE a.representativeName = :representativeName"),
    @NamedQuery(name = "Agency.findByRepresentativeContactNo", query = "SELECT a FROM Agency a WHERE a.representativeContactNo = :representativeContactNo"),
    @NamedQuery(name = "Agency.findByRepresentativeEmail", query = "SELECT a FROM Agency a WHERE a.representativeEmail = :representativeEmail"),
    @NamedQuery(name = "Agency.findByType", query = "SELECT a FROM Agency a WHERE a.type = :type")})
public class Agency implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @Column(name = "agency_name")
    private String agencyName;
    @Basic(optional = false)
    @Column(name = "email")
    private String email;
    @Basic(optional = false)
    @Column(name = "representative_name")
    private String representativeName;
    @Basic(optional = false)
    @Column(name = "representative_contact_no")
    private long representativeContactNo;
    @Basic(optional = false)
    @Column(name = "representative_email")
    private String representativeEmail;
    @Lob
    @Column(name = "photo")
    private String photo;
    @Basic(optional = false)
    @Column(name = "type")
    private String type;
    @JoinTable(name = "location_agency", joinColumns = {
        @JoinColumn(name = "agency_id", referencedColumnName = "id")}, inverseJoinColumns = {
        @JoinColumn(name = "location_id", referencedColumnName = "id")})
    @ManyToMany
    private Collection<Location> locationCollection;
    @JoinColumn(name = "address_id", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Address addressId;
    @OneToOne(cascade = CascadeType.ALL, mappedBy = "agency")
    private Location location;

    public Agency() {
    }

    public Agency(Integer id) {
        this.id = id;
    }

    public Agency(Integer id, String agencyName, String email, String representativeName, long representativeContactNo, String representativeEmail, String type) {
        this.id = id;
        this.agencyName = agencyName;
        this.email = email;
        this.representativeName = representativeName;
        this.representativeContactNo = representativeContactNo;
        this.representativeEmail = representativeEmail;
        this.type = type;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getAgencyName() {
        return agencyName;
    }

    public void setAgencyName(String agencyName) {
        this.agencyName = agencyName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getRepresentativeName() {
        return representativeName;
    }

    public void setRepresentativeName(String representativeName) {
        this.representativeName = representativeName;
    }

    public long getRepresentativeContactNo() {
        return representativeContactNo;
    }

    public void setRepresentativeContactNo(long representativeContactNo) {
        this.representativeContactNo = representativeContactNo;
    }

    public String getRepresentativeEmail() {
        return representativeEmail;
    }

    public void setRepresentativeEmail(String representativeEmail) {
        this.representativeEmail = representativeEmail;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    @XmlTransient
    public Collection<Location> getLocationCollection() {
        return locationCollection;
    }

    public void setLocationCollection(Collection<Location> locationCollection) {
        this.locationCollection = locationCollection;
    }

    public Address getAddressId() {
        return addressId;
    }

    public void setAddressId(Address addressId) {
        this.addressId = addressId;
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
        if (!(object instanceof Agency)) {
            return false;
        }
        Agency other = (Agency) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.creathon.bean.Agency[ id=" + id + " ]";
    }
    
}
