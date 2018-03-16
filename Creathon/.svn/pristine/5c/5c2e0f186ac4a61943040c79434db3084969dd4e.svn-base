package com.creathon.bean;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "team_member")
public class TeamMember {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "id")
	private Integer id;

	@Column(name = "name")
	private String name;

	@Column(name = "father_name")
	private String fatherName;

	@Column(name = "email")
	private String email;

	@Column(name = "aadhar_no")
	private Long aadharNo;

	@Column(name = "date_of_birth")
	private String dateOfBirth;

	@Column(name = "place_of_birth")
	private String placeOfBirth;

	@JoinColumn(name = "designation_id", referencedColumnName = "id")
	@ManyToOne(targetEntity = Designation.class)
	private Designation designation;

	@JoinColumn(name = "film_id", referencedColumnName = "id")
	@OneToOne(targetEntity = Films.class)
	private Films film;

	@Column(name = "period_of_visit")
	private String periodOfVisit;

	@Column(name = "area_of_visit")
	private String areaOfVisit;

	@JoinColumn(name = "present_address_id", referencedColumnName = "id")
	@OneToOne(targetEntity = Address.class, cascade = CascadeType.ALL)
	private Address presentAddress;

	@JoinColumn(name = "permanent_address_id", referencedColumnName = "id")
	@OneToOne(targetEntity = Address.class, cascade = CascadeType.ALL)
	private Address permanentAddress;

	@Column(name = "passport_no")
	private String passportNo;

	@Column(name = "passport_issuing_authority")
	private String passportIssuingAuthority;

	@Column(name = "validity")
	private String passportValidity;

	@Column(name = "visa_no")
	private String visaNo;

	@Column(name = "visa_type")
	private String visaType;

	@Column(name = "visa_validity")
	private String visaValidity;

	@Column(name = "visa_issuing_authority")
	private String visaIssuingAuthority;

	@OneToOne(targetEntity = ProductionHouse.class)
	@JoinColumn(name = "production_house_id", referencedColumnName = "id")
	private ProductionHouse productionHouse;

	public Integer getId() {
		return id;
	}

	public String getName() {
		return name;
	}

	public String getFatherName() {
		return fatherName;
	}

	public String getEmail() {
		return email;
	}

	public Long getAadharNo() {
		return aadharNo;
	}

	public String getDateOfBirth() {
		return dateOfBirth;
	}

	public String getPlaceOfBirth() {
		return placeOfBirth;
	}

	public Designation getDesignation() {
		return designation;
	}

	public Films getFilm() {
		return film;
	}

	public String getPeriodOfVisit() {
		return periodOfVisit;
	}

	public String getAreaOfVisit() {
		return areaOfVisit;
	}

	public Address getPresentAddress() {
		return presentAddress;
	}

	public Address getPermanentAddress() {
		return permanentAddress;
	}

	public String getPassportNo() {
		return passportNo;
	}

	public String getPassportIssuingAuthority() {
		return passportIssuingAuthority;
	}

	public String getPassportValidity() {
		return passportValidity;
	}

	public String getVisaNo() {
		return visaNo;
	}

	public String getVisaType() {
		return visaType;
	}

	public String getVisaValidity() {
		return visaValidity;
	}

	public String getVisaIssuingAuthority() {
		return visaIssuingAuthority;
	}

	public ProductionHouse getProductionHouse() {
		return productionHouse;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setFatherName(String fatherName) {
		this.fatherName = fatherName;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setAadharNo(Long aadharNo) {
		this.aadharNo = aadharNo;
	}

	public void setDateOfBirth(String dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

	public void setPlaceOfBirth(String placeOfBirth) {
		this.placeOfBirth = placeOfBirth;
	}

	public void setDesignation(Designation designation) {
		this.designation = designation;
	}

	public void setFilm(Films film) {
		this.film = film;
	}

	public void setPeriodOfVisit(String periodOfVisit) {
		this.periodOfVisit = periodOfVisit;
	}

	public void setAreaOfVisit(String areaOfVisit) {
		this.areaOfVisit = areaOfVisit;
	}

	public void setPresentAddress(Address presentAddress) {
		this.presentAddress = presentAddress;
	}

	public void setPermanentAddress(Address permanentAddress) {
		this.permanentAddress = permanentAddress;
	}

	public void setPassportNo(String passportNo) {
		this.passportNo = passportNo;
	}

	public void setPassportIssuingAuthority(String passportIssuingAuthority) {
		this.passportIssuingAuthority = passportIssuingAuthority;
	}

	public void setPassportValidity(String passportValidity) {
		this.passportValidity = passportValidity;
	}

	public void setVisaNo(String visaNo) {
		this.visaNo = visaNo;
	}

	public void setVisaType(String visaType) {
		this.visaType = visaType;
	}

	public void setVisaValidity(String visaValidity) {
		this.visaValidity = visaValidity;
	}

	public void setVisaIssuingAuthority(String visaIssuingAuthority) {
		this.visaIssuingAuthority = visaIssuingAuthority;
	}

	public void setProductionHouse(ProductionHouse productionHouse) {
		this.productionHouse = productionHouse;
	}

}
