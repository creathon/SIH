/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.creathon.bean;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author VedvratLodhi
 */
@Entity
@Table(name = "location_permission")
public class LocationPermission implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Integer id;
    
    @JoinColumn(name = "shoot_application_id",referencedColumnName="id")
    @ManyToOne(targetEntity = ShootApplication.class)
    private ShootApplication shootApplication;
    
    @OneToOne
    @JoinColumn(name = "status",referencedColumnName="id")
    private Status status;

    @Column(name = "comments")
    private String comments;
    
    @OneToOne
    @JoinColumn(name = "agency_id",referencedColumnName="id")
    private Agency agency;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public ShootApplication getShootApplication() {
		return shootApplication;
	}

	public void setShootApplication(ShootApplication shootApplication) {
		this.shootApplication = shootApplication;
	}

	
	public Status getStatus() {
		return status;
	}

	public void setStatus(Status status) {
		this.status = status;
	}

	public String getComments() {
		return comments;
	}

	public void setComments(String comments) {
		this.comments = comments;
	}

	public Agency getAgency() {
		return agency;
	}

	public void setAgency(Agency agency) {
		this.agency = agency;
	}

	@Override
	public String toString() {
		return "LocationPermission [id=" + id + ", shootApplication=" + shootApplication + ", status=" + status
				+ ", comments=" + comments + ", agency=" + agency + "]";
	}

    
}
