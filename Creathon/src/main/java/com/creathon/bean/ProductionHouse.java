/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.creathon.bean;

import java.io.Serializable;
import java.util.Date;
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
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author rkahar
 */
@Entity
@Table(name = "production_house")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "ProductionHouse.findAll", query = "SELECT p FROM ProductionHouse p"),
    @NamedQuery(name = "ProductionHouse.findById", query = "SELECT p FROM ProductionHouse p WHERE p.id = :id"),
    @NamedQuery(name = "ProductionHouse.findByName", query = "SELECT p FROM ProductionHouse p WHERE p.name = :name"),
    @NamedQuery(name = "ProductionHouse.findByAddressId", query = "SELECT p FROM ProductionHouse p WHERE p.addressId = :addressId"),
    @NamedQuery(name = "ProductionHouse.findByPhoneNo", query = "SELECT p FROM ProductionHouse p WHERE p.phoneNo = :phoneNo"),
    @NamedQuery(name = "ProductionHouse.findByMobileNo", query = "SELECT p FROM ProductionHouse p WHERE p.mobileNo = :mobileNo"),
    @NamedQuery(name = "ProductionHouse.findByEmailId", query = "SELECT p FROM ProductionHouse p WHERE p.emailId = :emailId"),
    @NamedQuery(name = "ProductionHouse.findByProducerName", query = "SELECT p FROM ProductionHouse p WHERE p.producerName = :producerName"),
    @NamedQuery(name = "ProductionHouse.findByNationality", query = "SELECT p FROM ProductionHouse p WHERE p.nationality = :nationality"),
    @NamedQuery(name = "ProductionHouse.findByPassportNo", query = "SELECT p FROM ProductionHouse p WHERE p.passportNo = :passportNo"),
    @NamedQuery(name = "ProductionHouse.findByValidity", query = "SELECT p FROM ProductionHouse p WHERE p.validity = :validity"),
    @NamedQuery(name = "ProductionHouse.findByVisaType", query = "SELECT p FROM ProductionHouse p WHERE p.visaType = :visaType"),
    @NamedQuery(name = "ProductionHouse.findByVisaNumber", query = "SELECT p FROM ProductionHouse p WHERE p.visaNumber = :visaNumber"),
    @NamedQuery(name = "ProductionHouse.findByVisaValidity", query = "SELECT p FROM ProductionHouse p WHERE p.visaValidity = :visaValidity"),
    @NamedQuery(name = "ProductionHouse.findByContactPerson", query = "SELECT p FROM ProductionHouse p WHERE p.contactPerson = :contactPerson"),
    @NamedQuery(name = "ProductionHouse.findByProducerAadhar", query = "SELECT p FROM ProductionHouse p WHERE p.producerAadhar = :producerAadhar")})
public class ProductionHouse implements Serializable {

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
    @Column(name = "address_id")
    private int addressId;
    @Basic(optional = false)
    @Column(name = "phone_no")
    private int phoneNo;
    @Basic(optional = false)
    @Column(name = "mobile_no")
    private int mobileNo;
    @Basic(optional = false)
    @Column(name = "email_id")
    private String emailId;
    @Basic(optional = false)
    @Column(name = "producer_name")
    private String producerName;
    @Lob
    @Column(name = "producer_experience_profile")
    private String producerExperienceProfile;
    @Column(name = "nationality")
    private String nationality;
    @Column(name = "passport_no")
    private String passportNo;
    @Column(name = "validity")
    @Temporal(TemporalType.TIMESTAMP)
    private Date validity;
    @Column(name = "visa_type")
    private String visaType;
    @Column(name = "visa_number")
    private Integer visaNumber;
    @Column(name = "visa_validity")
    private Integer visaValidity;
    @Column(name = "contact_person")
    private String contactPerson;
    @Column(name = "producer_aadhar")
    private String producerAadhar;

    public ProductionHouse() {
    }

    public ProductionHouse(Integer id) {
        this.id = id;
    }

    public ProductionHouse(Integer id, String name, int addressId, int phoneNo, int mobileNo, String emailId, String producerName) {
        this.id = id;
        this.name = name;
        this.addressId = addressId;
        this.phoneNo = phoneNo;
        this.mobileNo = mobileNo;
        this.emailId = emailId;
        this.producerName = producerName;
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

    public int getAddressId() {
        return addressId;
    }

    public void setAddressId(int addressId) {
        this.addressId = addressId;
    }

    public int getPhoneNo() {
        return phoneNo;
    }

    public void setPhoneNo(int phoneNo) {
        this.phoneNo = phoneNo;
    }

    public int getMobileNo() {
        return mobileNo;
    }

    public void setMobileNo(int mobileNo) {
        this.mobileNo = mobileNo;
    }

    public String getEmailId() {
        return emailId;
    }

    public void setEmailId(String emailId) {
        this.emailId = emailId;
    }

    public String getProducerName() {
        return producerName;
    }

    public void setProducerName(String producerName) {
        this.producerName = producerName;
    }

    public String getProducerExperienceProfile() {
        return producerExperienceProfile;
    }

    public void setProducerExperienceProfile(String producerExperienceProfile) {
        this.producerExperienceProfile = producerExperienceProfile;
    }

    public String getNationality() {
        return nationality;
    }

    public void setNationality(String nationality) {
        this.nationality = nationality;
    }

    public String getPassportNo() {
        return passportNo;
    }

    public void setPassportNo(String passportNo) {
        this.passportNo = passportNo;
    }

    public Date getValidity() {
        return validity;
    }

    public void setValidity(Date validity) {
        this.validity = validity;
    }

    public String getVisaType() {
        return visaType;
    }

    public void setVisaType(String visaType) {
        this.visaType = visaType;
    }

    public Integer getVisaNumber() {
        return visaNumber;
    }

    public void setVisaNumber(Integer visaNumber) {
        this.visaNumber = visaNumber;
    }

    public Integer getVisaValidity() {
        return visaValidity;
    }

    public void setVisaValidity(Integer visaValidity) {
        this.visaValidity = visaValidity;
    }

    public String getContactPerson() {
        return contactPerson;
    }

    public void setContactPerson(String contactPerson) {
        this.contactPerson = contactPerson;
    }

    public String getProducerAadhar() {
        return producerAadhar;
    }

    public void setProducerAadhar(String producerAadhar) {
        this.producerAadhar = producerAadhar;
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
        if (!(object instanceof ProductionHouse)) {
            return false;
        }
        ProductionHouse other = (ProductionHouse) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.creathon.bean.ProductionHouse[ id=" + id + " ]";
    }
    
}
