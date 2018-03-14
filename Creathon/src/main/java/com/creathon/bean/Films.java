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
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author rkahar
 */
@Entity
@Table(name = "films")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Films.findAll", query = "SELECT f FROM Films f"),
    @NamedQuery(name = "Films.findById", query = "SELECT f FROM Films f WHERE f.id = :id"),
    @NamedQuery(name = "Films.findByName", query = "SELECT f FROM Films f WHERE f.name = :name"),
    @NamedQuery(name = "Films.findByCertificateImap", query = "SELECT f FROM Films f WHERE f.certificateImap = :certificateImap"),
    @NamedQuery(name = "Films.findByCertificateWifpa", query = "SELECT f FROM Films f WHERE f.certificateWifpa = :certificateWifpa"),
    @NamedQuery(name = "Films.findByNameOfBanner", query = "SELECT f FROM Films f WHERE f.nameOfBanner = :nameOfBanner"),
    @NamedQuery(name = "Films.findByLanguage", query = "SELECT f FROM Films f WHERE f.language = :language"),
    @NamedQuery(name = "Films.findByTypeOfFilm", query = "SELECT f FROM Films f WHERE f.typeOfFilm = :typeOfFilm"),
    @NamedQuery(name = "Films.findByMainActor", query = "SELECT f FROM Films f WHERE f.mainActor = :mainActor"),
    @NamedQuery(name = "Films.findByMainActress", query = "SELECT f FROM Films f WHERE f.mainActress = :mainActress"),
    @NamedQuery(name = "Films.findByNoOfPeopleInFilm", query = "SELECT f FROM Films f WHERE f.noOfPeopleInFilm = :noOfPeopleInFilm"),
    @NamedQuery(name = "Films.findByNatureOfFilm", query = "SELECT f FROM Films f WHERE f.natureOfFilm = :natureOfFilm")})
public class Films implements Serializable {

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
    @Column(name = "certificate_imap")
    private String certificateImap;
    @Basic(optional = false)
    @Column(name = "certificate_wifpa")
    private String certificateWifpa;
    @Basic(optional = false)
    @Column(name = "name_of_banner")
    private String nameOfBanner;
    @Basic(optional = false)
    @Column(name = "language")
    private String language;
    @Basic(optional = false)
    @Column(name = "type_of_film")
    private String typeOfFilm;
    @Basic(optional = false)
    @Column(name = "main_actor")
    private String mainActor;
    @Basic(optional = false)
    @Column(name = "main_actress")
    private String mainActress;
    @Basic(optional = false)
    @Column(name = "no_of_people_in_film")
    private int noOfPeopleInFilm;
    @Lob
    @Column(name = "synopsis_of_film")
    private String synopsisOfFilm;
    @Basic(optional = false)
    @Column(name = "nature_of_film")
    private String natureOfFilm;
    @JoinColumn(name = "art_director_id", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private TeamMember artDirectorId;
    @JoinColumn(name = "cinematographer_id", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private TeamMember cinematographerId;
    @JoinColumn(name = "director_id", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private TeamMember directorId;
    @JoinColumn(name = "local_line_producer_id", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private TeamMember localLineProducerId;

    public Films() {
    }

    public Films(Integer id) {
        this.id = id;
    }

    public Films(Integer id, String name, String certificateImap, String certificateWifpa, String nameOfBanner, String language, String typeOfFilm, String mainActor, String mainActress, int noOfPeopleInFilm, String natureOfFilm) {
        this.id = id;
        this.name = name;
        this.certificateImap = certificateImap;
        this.certificateWifpa = certificateWifpa;
        this.nameOfBanner = nameOfBanner;
        this.language = language;
        this.typeOfFilm = typeOfFilm;
        this.mainActor = mainActor;
        this.mainActress = mainActress;
        this.noOfPeopleInFilm = noOfPeopleInFilm;
        this.natureOfFilm = natureOfFilm;
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

    public String getCertificateImap() {
        return certificateImap;
    }

    public void setCertificateImap(String certificateImap) {
        this.certificateImap = certificateImap;
    }

    public String getCertificateWifpa() {
        return certificateWifpa;
    }

    public void setCertificateWifpa(String certificateWifpa) {
        this.certificateWifpa = certificateWifpa;
    }

    public String getNameOfBanner() {
        return nameOfBanner;
    }

    public void setNameOfBanner(String nameOfBanner) {
        this.nameOfBanner = nameOfBanner;
    }

    public String getLanguage() {
        return language;
    }

    public void setLanguage(String language) {
        this.language = language;
    }

    public String getTypeOfFilm() {
        return typeOfFilm;
    }

    public void setTypeOfFilm(String typeOfFilm) {
        this.typeOfFilm = typeOfFilm;
    }

    public String getMainActor() {
        return mainActor;
    }

    public void setMainActor(String mainActor) {
        this.mainActor = mainActor;
    }

    public String getMainActress() {
        return mainActress;
    }

    public void setMainActress(String mainActress) {
        this.mainActress = mainActress;
    }

    public int getNoOfPeopleInFilm() {
        return noOfPeopleInFilm;
    }

    public void setNoOfPeopleInFilm(int noOfPeopleInFilm) {
        this.noOfPeopleInFilm = noOfPeopleInFilm;
    }

    public String getSynopsisOfFilm() {
        return synopsisOfFilm;
    }

    public void setSynopsisOfFilm(String synopsisOfFilm) {
        this.synopsisOfFilm = synopsisOfFilm;
    }

    public String getNatureOfFilm() {
        return natureOfFilm;
    }

    public void setNatureOfFilm(String natureOfFilm) {
        this.natureOfFilm = natureOfFilm;
    }

    public TeamMember getArtDirectorId() {
        return artDirectorId;
    }

    public void setArtDirectorId(TeamMember artDirectorId) {
        this.artDirectorId = artDirectorId;
    }

    public TeamMember getCinematographerId() {
        return cinematographerId;
    }

    public void setCinematographerId(TeamMember cinematographerId) {
        this.cinematographerId = cinematographerId;
    }

    public TeamMember getDirectorId() {
        return directorId;
    }

    public void setDirectorId(TeamMember directorId) {
        this.directorId = directorId;
    }

    public TeamMember getLocalLineProducerId() {
        return localLineProducerId;
    }

    public void setLocalLineProducerId(TeamMember localLineProducerId) {
        this.localLineProducerId = localLineProducerId;
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
        if (!(object instanceof Films)) {
            return false;
        }
        Films other = (Films) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.creathon.bean.Films[ id=" + id + " ]";
    }
    
}
