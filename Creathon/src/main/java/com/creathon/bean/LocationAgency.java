package com.creathon.bean;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name="location_agency")
public class LocationAgency {

	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
	private Integer id;
	
	@JsonIgnore
	@JoinColumn(name="location_id",  referencedColumnName ="id")
	@OneToOne(targetEntity=Location.class)
	private Location location;
	
	
	@JoinColumn(name="agency_id" , referencedColumnName ="id")
	@OneToOne(targetEntity=Agency.class)
	private Agency agency;

	
	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Location getLocation() {
		return location;
	}

	public void setLocation(Location location) {
		this.location = location;
	}

	public Agency getAgency() {
		return agency;
	}

	public void setAgency(Agency agency) {
		this.agency = agency;
	}

	@Override
	public String toString() {
		return "LocationAgency [id=" + id + ", location=" + location + ", agency=" + agency + "]";
	}
	
	
	
}
