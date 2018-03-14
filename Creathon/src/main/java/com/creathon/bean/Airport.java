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
@Table(name = "airport")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Airport.findAll", query = "SELECT a FROM Airport a"),
    @NamedQuery(name = "Airport.findById", query = "SELECT a FROM Airport a WHERE a.id = :id"),
    @NamedQuery(name = "Airport.findByCameramanId", query = "SELECT a FROM Airport a WHERE a.cameramanId = :cameramanId"),
    @NamedQuery(name = "Airport.findByPurposeOfLengthOfCamera", query = "SELECT a FROM Airport a WHERE a.purposeOfLengthOfCamera = :purposeOfLengthOfCamera"),
    @NamedQuery(name = "Airport.findByHeightOfFlight", query = "SELECT a FROM Airport a WHERE a.heightOfFlight = :heightOfFlight"),
    @NamedQuery(name = "Airport.findByFormalSize", query = "SELECT a FROM Airport a WHERE a.formalSize = :formalSize"),
    @NamedQuery(name = "Airport.findByTypeOfCamera", query = "SELECT a FROM Airport a WHERE a.typeOfCamera = :typeOfCamera"),
    @NamedQuery(name = "Airport.findByTypeOfSensor", query = "SELECT a FROM Airport a WHERE a.typeOfSensor = :typeOfSensor"),
    @NamedQuery(name = "Airport.findByDateOfPhotography", query = "SELECT a FROM Airport a WHERE a.dateOfPhotography = :dateOfPhotography"),
    @NamedQuery(name = "Airport.findByDescriptionOfAircraft", query = "SELECT a FROM Airport a WHERE a.descriptionOfAircraft = :descriptionOfAircraft"),
    @NamedQuery(name = "Airport.findByNameOfPilot", query = "SELECT a FROM Airport a WHERE a.nameOfPilot = :nameOfPilot"),
    @NamedQuery(name = "Airport.findByAddressOfPilot", query = "SELECT a FROM Airport a WHERE a.addressOfPilot = :addressOfPilot"),
    @NamedQuery(name = "Airport.findByOwnerOfAircraft", query = "SELECT a FROM Airport a WHERE a.ownerOfAircraft = :ownerOfAircraft"),
    @NamedQuery(name = "Airport.findByNameOfAircraft", query = "SELECT a FROM Airport a WHERE a.nameOfAircraft = :nameOfAircraft")})
public class Airport implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @Column(name = "cameraman_id")
    private int cameramanId;
    @Basic(optional = false)
    @Column(name = "purpose_of_length_of_camera")
    private float purposeOfLengthOfCamera;
    @Basic(optional = false)
    @Column(name = "height_of_flight")
    private float heightOfFlight;
    @Basic(optional = false)
    @Column(name = "formal_size")
    private String formalSize;
    @Basic(optional = false)
    @Column(name = "type_of_camera")
    private String typeOfCamera;
    @Basic(optional = false)
    @Column(name = "type_of_sensor")
    private String typeOfSensor;
    @Basic(optional = false)
    @Column(name = "date_of_photography")
    @Temporal(TemporalType.TIMESTAMP)
    private Date dateOfPhotography;
    @Basic(optional = false)
    @Column(name = "description_of_aircraft")
    private String descriptionOfAircraft;
    @Basic(optional = false)
    @Column(name = "name_of_pilot")
    private String nameOfPilot;
    @Basic(optional = false)
    @Column(name = "address_of_pilot")
    private String addressOfPilot;
    @Basic(optional = false)
    @Column(name = "owner_of_aircraft")
    private String ownerOfAircraft;
    @Basic(optional = false)
    @Column(name = "name_of_aircraft")
    private String nameOfAircraft;

    public Airport() {
    }

    public Airport(Integer id) {
        this.id = id;
    }

    public Airport(Integer id, int cameramanId, float purposeOfLengthOfCamera, float heightOfFlight, String formalSize, String typeOfCamera, String typeOfSensor, Date dateOfPhotography, String descriptionOfAircraft, String nameOfPilot, String addressOfPilot, String ownerOfAircraft, String nameOfAircraft) {
        this.id = id;
        this.cameramanId = cameramanId;
        this.purposeOfLengthOfCamera = purposeOfLengthOfCamera;
        this.heightOfFlight = heightOfFlight;
        this.formalSize = formalSize;
        this.typeOfCamera = typeOfCamera;
        this.typeOfSensor = typeOfSensor;
        this.dateOfPhotography = dateOfPhotography;
        this.descriptionOfAircraft = descriptionOfAircraft;
        this.nameOfPilot = nameOfPilot;
        this.addressOfPilot = addressOfPilot;
        this.ownerOfAircraft = ownerOfAircraft;
        this.nameOfAircraft = nameOfAircraft;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public int getCameramanId() {
        return cameramanId;
    }

    public void setCameramanId(int cameramanId) {
        this.cameramanId = cameramanId;
    }

    public float getPurposeOfLengthOfCamera() {
        return purposeOfLengthOfCamera;
    }

    public void setPurposeOfLengthOfCamera(float purposeOfLengthOfCamera) {
        this.purposeOfLengthOfCamera = purposeOfLengthOfCamera;
    }

    public float getHeightOfFlight() {
        return heightOfFlight;
    }

    public void setHeightOfFlight(float heightOfFlight) {
        this.heightOfFlight = heightOfFlight;
    }

    public String getFormalSize() {
        return formalSize;
    }

    public void setFormalSize(String formalSize) {
        this.formalSize = formalSize;
    }

    public String getTypeOfCamera() {
        return typeOfCamera;
    }

    public void setTypeOfCamera(String typeOfCamera) {
        this.typeOfCamera = typeOfCamera;
    }

    public String getTypeOfSensor() {
        return typeOfSensor;
    }

    public void setTypeOfSensor(String typeOfSensor) {
        this.typeOfSensor = typeOfSensor;
    }

    public Date getDateOfPhotography() {
        return dateOfPhotography;
    }

    public void setDateOfPhotography(Date dateOfPhotography) {
        this.dateOfPhotography = dateOfPhotography;
    }

    public String getDescriptionOfAircraft() {
        return descriptionOfAircraft;
    }

    public void setDescriptionOfAircraft(String descriptionOfAircraft) {
        this.descriptionOfAircraft = descriptionOfAircraft;
    }

    public String getNameOfPilot() {
        return nameOfPilot;
    }

    public void setNameOfPilot(String nameOfPilot) {
        this.nameOfPilot = nameOfPilot;
    }

    public String getAddressOfPilot() {
        return addressOfPilot;
    }

    public void setAddressOfPilot(String addressOfPilot) {
        this.addressOfPilot = addressOfPilot;
    }

    public String getOwnerOfAircraft() {
        return ownerOfAircraft;
    }

    public void setOwnerOfAircraft(String ownerOfAircraft) {
        this.ownerOfAircraft = ownerOfAircraft;
    }

    public String getNameOfAircraft() {
        return nameOfAircraft;
    }

    public void setNameOfAircraft(String nameOfAircraft) {
        this.nameOfAircraft = nameOfAircraft;
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
        if (!(object instanceof Airport)) {
            return false;
        }
        Airport other = (Airport) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.creathon.bean.Airport[ id=" + id + " ]";
    }
    
}
