package com.creathon.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="production_house")
public class ProductionHouse {

	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
	private Integer id;
	
    @Column(name = "name")
	private String name;
	
    @JoinColumn(name = "addressId")
    @OneToOne
	private Address addressId;
	
    @Column(name = "phoneNo")
	private Integer phoneNo;
	
    @Column(name = "mobileNo")
	private Integer mobileNo;
	
    @Column(name = "emailId")
	private String emailId;
	
    @Column(name = "producer_name")
	private String producerName;
	
    @Column(name = "producer_experience_profile")
	private String producerExperienceProfile;
	
    @Column(name = "nationality")
	private String nationality;
	
    @Column(name = "passport_no")
	private String passportNo;
	
    @Column(name = "validity")
	private String validity;
	
    @Column(name = "visa_type")
	private String visaType;
	
    @Column(name = "visa_number")
	private Integer visaNumber;
	
    @Column(name = "visa_validity")
	private String visaValidity;
	
    @Column(name = "contact_person")
	private String contactPerson;
	
    @Column(name = "producer_aadhar")
	private Long producerAadhar;

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

	public Address getAddressId() {
		return addressId;
	}

	public void setAddressId(Address addressId) {
		this.addressId = addressId;
	}

	public Integer getPhoneNo() {
		return phoneNo;
	}

	public void setPhoneNo(Integer phoneNo) {
		this.phoneNo = phoneNo;
	}

	public Integer getMobileNo() {
		return mobileNo;
	}

	public void setMobileNo(Integer mobileNo) {
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

	public String getValidity() {
		return validity;
	}

	public void setValidity(String validity) {
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

	public String getVisaValidity() {
		return visaValidity;
	}

	public void setVisaValidity(String visaValidity) {
		this.visaValidity = visaValidity;
	}

	public String getContactPerson() {
		return contactPerson;
	}

	public void setContactPerson(String contactPerson) {
		this.contactPerson = contactPerson;
	}

	public Long getProducerAadhar() {
		return producerAadhar;
	}

	public void setProducerAadhar(Long producerAadhar) {
		this.producerAadhar = producerAadhar;
	}
	
	
	
}
