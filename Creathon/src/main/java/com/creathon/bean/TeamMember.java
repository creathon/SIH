/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.creathon.bean;

import java.io.Serializable;
import java.util.Collection;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author rkahar
 */
@Entity
@Table(name = "team_member")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "TeamMember.findAll", query = "SELECT t FROM TeamMember t"),
    @NamedQuery(name = "TeamMember.findById", query = "SELECT t FROM TeamMember t WHERE t.id = :id"),
    @NamedQuery(name = "TeamMember.findByName", query = "SELECT t FROM TeamMember t WHERE t.name = :name"),
    @NamedQuery(name = "TeamMember.findByDesignationId", query = "SELECT t FROM TeamMember t WHERE t.designationId = :designationId"),
    @NamedQuery(name = "TeamMember.findByDateOfBirth", query = "SELECT t FROM TeamMember t WHERE t.dateOfBirth = :dateOfBirth"),
    @NamedQuery(name = "TeamMember.findByPlaceOfBirth", query = "SELECT t FROM TeamMember t WHERE t.placeOfBirth = :placeOfBirth"),
    @NamedQuery(name = "TeamMember.findByPresentAddressId", query = "SELECT t FROM TeamMember t WHERE t.presentAddressId = :presentAddressId"),
    @NamedQuery(name = "TeamMember.findByPermanentAddressId", query = "SELECT t FROM TeamMember t WHERE t.permanentAddressId = :permanentAddressId"),
    @NamedQuery(name = "TeamMember.findByPassportNo", query = "SELECT t FROM TeamMember t WHERE t.passportNo = :passportNo"),
    @NamedQuery(name = "TeamMember.findByPassportIssuningAuthority", query = "SELECT t FROM TeamMember t WHERE t.passportIssuningAuthority = :passportIssuningAuthority"),
    @NamedQuery(name = "TeamMember.findByValidity", query = "SELECT t FROM TeamMember t WHERE t.validity = :validity"),
    @NamedQuery(name = "TeamMember.findByVisaNo", query = "SELECT t FROM TeamMember t WHERE t.visaNo = :visaNo"),
    @NamedQuery(name = "TeamMember.findByVisaType", query = "SELECT t FROM TeamMember t WHERE t.visaType = :visaType"),
    @NamedQuery(name = "TeamMember.findByVisaValidity", query = "SELECT t FROM TeamMember t WHERE t.visaValidity = :visaValidity"),
    @NamedQuery(name = "TeamMember.findByPeriodOfVisit", query = "SELECT t FROM TeamMember t WHERE t.periodOfVisit = :periodOfVisit"),
    @NamedQuery(name = "TeamMember.findByAreaOfVisit", query = "SELECT t FROM TeamMember t WHERE t.areaOfVisit = :areaOfVisit"),
    @NamedQuery(name = "TeamMember.findByVisaIssuingAuthority", query = "SELECT t FROM TeamMember t WHERE t.visaIssuingAuthority = :visaIssuingAuthority"),
    @NamedQuery(name = "TeamMember.findByProductionHouseId", query = "SELECT t FROM TeamMember t WHERE t.productionHouseId = :productionHouseId"),
    @NamedQuery(name = "TeamMember.findByFatherName", query = "SELECT t FROM TeamMember t WHERE t.fatherName = :fatherName"),
    @NamedQuery(name = "TeamMember.findByEmail", query = "SELECT t FROM TeamMember t WHERE t.email = :email"),
    @NamedQuery(name = "TeamMember.findByAadharNo", query = "SELECT t FROM TeamMember t WHERE t.aadharNo = :aadharNo"),
    @NamedQuery(name = "TeamMember.findByFilmId", query = "SELECT t FROM TeamMember t WHERE t.filmId = :filmId")})
public class TeamMember implements Serializable {

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
    @Column(name = "designation_id")
    private int designationId;
    @Basic(optional = false)
    @Column(name = "date_of_birth")
    @Temporal(TemporalType.DATE)
    private Date dateOfBirth;
    @Basic(optional = false)
    @Column(name = "place_of_birth")
    @Temporal(TemporalType.DATE)
    private Date placeOfBirth;
    @Column(name = "present_address_id")
    private Integer presentAddressId;
    @Column(name = "permanent_address_id")
    private Integer permanentAddressId;
    @Column(name = "passport_no")
    private String passportNo;
    @Column(name = "passport_issuning_authority")
    private String passportIssuningAuthority;
    @Column(name = "validity")
    private String validity;
    @Column(name = "visa_no")
    private String visaNo;
    @Column(name = "visa_type")
    private String visaType;
    @Column(name = "visa_validity")
    private String visaValidity;
    @Column(name = "period_of_visit")
    private String periodOfVisit;
    @Column(name = "area_of_visit")
    private String areaOfVisit;
    @Column(name = "visa_issuing_authority")
    private String visaIssuingAuthority;
    @Basic(optional = false)
    @Column(name = "production_house_id")
    private String productionHouseId;
    @Basic(optional = false)
    @Column(name = "father_name")
    private String fatherName;
    @Basic(optional = false)
    @Column(name = "email")
    private String email;
    @Basic(optional = false)
    @Column(name = "aadhar_no")
    private long aadharNo;
    @Basic(optional = false)
    @Column(name = "film_id")
    private int filmId;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "artDirectorId")
    private Collection<Films> filmsCollection;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "cinematographerId")
    private Collection<Films> filmsCollection1;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "directorId")
    private Collection<Films> filmsCollection2;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "localLineProducerId")
    private Collection<Films> filmsCollection3;

    public TeamMember() {
    }

    public TeamMember(Integer id) {
        this.id = id;
    }

    public TeamMember(Integer id, String name, int designationId, Date dateOfBirth, Date placeOfBirth, String productionHouseId, String fatherName, String email, long aadharNo, int filmId) {
        this.id = id;
        this.name = name;
        this.designationId = designationId;
        this.dateOfBirth = dateOfBirth;
        this.placeOfBirth = placeOfBirth;
        this.productionHouseId = productionHouseId;
        this.fatherName = fatherName;
        this.email = email;
        this.aadharNo = aadharNo;
        this.filmId = filmId;
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

    public int getDesignationId() {
        return designationId;
    }

    public void setDesignationId(int designationId) {
        this.designationId = designationId;
    }

    public Date getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(Date dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public Date getPlaceOfBirth() {
        return placeOfBirth;
    }

    public void setPlaceOfBirth(Date placeOfBirth) {
        this.placeOfBirth = placeOfBirth;
    }

    public Integer getPresentAddressId() {
        return presentAddressId;
    }

    public void setPresentAddressId(Integer presentAddressId) {
        this.presentAddressId = presentAddressId;
    }

    public Integer getPermanentAddressId() {
        return permanentAddressId;
    }

    public void setPermanentAddressId(Integer permanentAddressId) {
        this.permanentAddressId = permanentAddressId;
    }

    public String getPassportNo() {
        return passportNo;
    }

    public void setPassportNo(String passportNo) {
        this.passportNo = passportNo;
    }

    public String getPassportIssuningAuthority() {
        return passportIssuningAuthority;
    }

    public void setPassportIssuningAuthority(String passportIssuningAuthority) {
        this.passportIssuningAuthority = passportIssuningAuthority;
    }

    public String getValidity() {
        return validity;
    }

    public void setValidity(String validity) {
        this.validity = validity;
    }

    public String getVisaNo() {
        return visaNo;
    }

    public void setVisaNo(String visaNo) {
        this.visaNo = visaNo;
    }

    public String getVisaType() {
        return visaType;
    }

    public void setVisaType(String visaType) {
        this.visaType = visaType;
    }

    public String getVisaValidity() {
        return visaValidity;
    }

    public void setVisaValidity(String visaValidity) {
        this.visaValidity = visaValidity;
    }

    public String getPeriodOfVisit() {
        return periodOfVisit;
    }

    public void setPeriodOfVisit(String periodOfVisit) {
        this.periodOfVisit = periodOfVisit;
    }

    public String getAreaOfVisit() {
        return areaOfVisit;
    }

    public void setAreaOfVisit(String areaOfVisit) {
        this.areaOfVisit = areaOfVisit;
    }

    public String getVisaIssuingAuthority() {
        return visaIssuingAuthority;
    }

    public void setVisaIssuingAuthority(String visaIssuingAuthority) {
        this.visaIssuingAuthority = visaIssuingAuthority;
    }

    public String getProductionHouseId() {
        return productionHouseId;
    }

    public void setProductionHouseId(String productionHouseId) {
        this.productionHouseId = productionHouseId;
    }

    public String getFatherName() {
        return fatherName;
    }

    public void setFatherName(String fatherName) {
        this.fatherName = fatherName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public long getAadharNo() {
        return aadharNo;
    }

    public void setAadharNo(long aadharNo) {
        this.aadharNo = aadharNo;
    }

    public int getFilmId() {
        return filmId;
    }

    public void setFilmId(int filmId) {
        this.filmId = filmId;
    }

    @XmlTransient
    public Collection<Films> getFilmsCollection() {
        return filmsCollection;
    }

    public void setFilmsCollection(Collection<Films> filmsCollection) {
        this.filmsCollection = filmsCollection;
    }

    @XmlTransient
    public Collection<Films> getFilmsCollection1() {
        return filmsCollection1;
    }

    public void setFilmsCollection1(Collection<Films> filmsCollection1) {
        this.filmsCollection1 = filmsCollection1;
    }

    @XmlTransient
    public Collection<Films> getFilmsCollection2() {
        return filmsCollection2;
    }

    public void setFilmsCollection2(Collection<Films> filmsCollection2) {
        this.filmsCollection2 = filmsCollection2;
    }

    @XmlTransient
    public Collection<Films> getFilmsCollection3() {
        return filmsCollection3;
    }

    public void setFilmsCollection3(Collection<Films> filmsCollection3) {
        this.filmsCollection3 = filmsCollection3;
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
        if (!(object instanceof TeamMember)) {
            return false;
        }
        TeamMember other = (TeamMember) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.creathon.bean.TeamMember[ id=" + id + " ]";
    }
    
}
