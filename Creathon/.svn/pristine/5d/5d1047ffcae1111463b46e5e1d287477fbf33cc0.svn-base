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
import javax.persistence.JoinColumn;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author VedvratLodhi
 */
@Entity
@Table(name = "airport")
public class Airport implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Integer id;
    

    @OneToOne
    @JoinColumn(name = "cameraman_id")
    private TeamMember cameramanId;

    
    @Column(name = "purpose_of_photography")
    private String purposeOfLengthOfCamera;

    @Column(name="focal_length_of_camera")
    private Float focalLengthOfCamera;
    
    @Column(name = "height_of_flight")
    private float heightOfFlight;

    @Column(name = "formal_size")
    private String formalSize;

    @Column(name = "type_of_camera")
    private String typeOfCamera;

    @Column(name = "type_of_sensor")
    private String typeOfSensor;

    @Column(name = "date_of_photography")
    @Temporal(TemporalType.TIMESTAMP)
    private Date dateOfPhotography;
  
    @Column(name = "description_of_aircraft")
    private String descriptionOfAircraft;

    @Column(name = "name_of_pilot")
    private String nameOfPilot;
  
    @Column(name = "address_of_pilot")
    private String addressOfPilot;

    @Column(name = "owner_of_aircraft")
    private String ownerOfAircraft;
   
    @Column(name = "name_of_aircraft")
    private String nameOfAircraft;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public TeamMember getCameramanId() {
		return cameramanId;
	}

	public void setCameramanId(TeamMember cameramanId) {
		this.cameramanId = cameramanId;
	}

	public String getPurposeOfLengthOfCamera() {
		return purposeOfLengthOfCamera;
	}

	public void setPurposeOfLengthOfCamera(String purposeOfLengthOfCamera) {
		this.purposeOfLengthOfCamera = purposeOfLengthOfCamera;
	}

	public Float getFocalLengthOfCamera() {
		return focalLengthOfCamera;
	}

	public void setFocalLengthOfCamera(Float focalLengthOfCamera) {
		this.focalLengthOfCamera = focalLengthOfCamera;
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
    
    
    

    
}
