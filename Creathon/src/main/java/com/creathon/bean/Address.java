package com.creathon.bean;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="address")
public class Address {

		@Id
	    @GeneratedValue(strategy = GenerationType.IDENTITY)
	    @Column(name = "id")
	    private Integer id;
		
	    @JoinColumn(name = "country_id")
	    @OneToOne(targetEntity = Countries.class)
	    private Countries country;
	    
	    @JoinColumn(name = "state_id")
	    @OneToOne(targetEntity = States.class)
	    private States state;
	    

	    @JoinColumn(name = "city_id")
	    @OneToOne(targetEntity = Cities.class)
	    private Cities city;
	    
	    @Column(name = "landmark")
	    private String landmark;
	    
	    @Column(name = "street")
	    private String street;
	    
	    @Column(name = "pincode")
	    private Integer pincode;
	    
	    @Column(name = "building_no")
	    private String buildingNo;

		public Integer getId() {
			return id;
		}

		public Countries getCountry() {
			return country;
		}

		public States getState() {
			return state;
		}

		public Cities getCity() {
			return city;
		}

		public String getLandmark() {
			return landmark;
		}

		public String getStreet() {
			return street;
		}

		public Integer getPincode() {
			return pincode;
		}

		public String getBuildingNo() {
			return buildingNo;
		}

		public void setId(Integer id) {
			this.id = id;
		}

		public void setCountry(Countries country) {
			this.country = country;
		}

		public void setState(States state) {
			this.state = state;
		}

		public void setCity(Cities city) {
			this.city = city;
		}

		public void setLandmark(String landmark) {
			this.landmark = landmark;
		}

		public void setStreet(String street) {
			this.street = street;
		}

		public void setPincode(Integer pincode) {
			this.pincode = pincode;
		}

		public void setBuildingNo(String buildingNo) {
			this.buildingNo = buildingNo;
		}
	    
	    
	    
	   
}
