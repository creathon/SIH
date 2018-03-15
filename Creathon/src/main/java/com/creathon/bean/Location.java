package com.creathon.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import org.springframework.web.multipart.MultipartFile;
import javax.persistence.Transient;

@Entity
@Table(name="location")
public class Location {

	
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
	private Integer id;
	
	
	 @Column(name = "name")
	 private Integer name;
	 
	 @JoinColumn(name = "address")
	 @OneToOne
	 private Address addressId;
	 
	 @Column(name = "type")
	 private String type;
	 
	 @Column(name = "description")
	 private String description;
	 
	 @Transient
	 private MultipartFile locationPhoto;
	 
	 public MultipartFile getLocationPhoto() {
		return locationPhoto;
	}

	public void setLocationPhoto(MultipartFile locationPhoto) {
		this.locationPhoto = locationPhoto;
	}

	@Column(name = "photo")
	 private String photo;
	 
	 @Column(name = "quote")
	 private String quote;

	 @Column(name = "price")
	 private Double price;
	 
	 
	@Column(name = "img_description")
	private String imgDescription;
		 
	@JoinColumn(name = "agency_id")
	@OneToOne
	private Agency agencyId;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getName() {
		return name;
	}

	public void setName(Integer name) {
		this.name = name;
	}

	public Address getAddressId() {
		return addressId;
	}

	public void setAddressId(Address addressId) {
		this.addressId = addressId;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public String getQuote() {
		return quote;
	}

	public void setQuote(String quote) {
		this.quote = quote;
	}

	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public String getImgDescription() {
		return imgDescription;
	}

	public void setImgDescription(String imgDescription) {
		this.imgDescription = imgDescription;
	}

	public Agency getAgencyId() {
		return agencyId;
	}

	public void setAgencyId(Agency agencyId) {
		this.agencyId = agencyId;
	}

}
