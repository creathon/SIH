package com.creathon.bean;

import java.lang.annotation.Target;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.NotFound;
/*@NotFound(action = NotFoundAction.IGNORE)*/

@Entity
@Table(name = "films")
public class Films {

	 private static final long serialVersionUID = 1L;
	    @Id
	    @GeneratedValue(strategy = GenerationType.IDENTITY)
	    @Column(name = "id")
	    private Integer id;
	    
	    @Column(name = "name")
	    private String name;
	    
	    @JoinColumn(name = "director_id", referencedColumnName = "id")
	    @OneToOne(targetEntity = TeamMember.class)
	    private TeamMember director;
	    
	    @Column(name="certificate_imap")
	    private String certificateImap;
	    
	    @Column(name="certificate_wifpa")
	    private String certificateWifpa;
	    
	    @Column(name="name_of_banner")
	    private String nameOfBanner;
	    
	    @Column(name="language")
	    private String language;
	    
	    @Column(name="type_of_film")
	    private String typeOfFilm;
	    
	    @Column(name="main_actor")
	    private String mainActor;
	    
	    @Column(name="main_actress")
	    private String mainActress;
	    
	    @Column(name="no_of_people_in_film")
	    private Integer noOfPeopleInFilm;
	    
	    @Column(name="synopsis_of_film")
	    private String synopsisOfFilm;
	    
	    @JoinColumn(name = "cinematographer_id", referencedColumnName = "id")
	    @OneToOne(targetEntity = TeamMember.class)
	    private TeamMember cinematographer;
	    
	    @JoinColumn(name = "local_line_producer_id", referencedColumnName = "id")
	    @OneToOne(targetEntity = TeamMember.class)
	    private TeamMember localLineProducer;
	    
	    @JoinColumn(name = "art_director_id", referencedColumnName = "id")
	    @OneToOne(targetEntity = TeamMember.class)
	    private TeamMember artDirector;
	    
	    @Column(name="nature_of_film")
	    private String natureOfFilm;

		public static long getSerialversionuid() {
			return serialVersionUID;
		}

		public Integer getId() {
			return id;
		}

		public String getName() {
			return name;
		}

		public TeamMember getDirector() {
			return director;
		}

		public String getCertificateImap() {
			return certificateImap;
		}

		public String getCertificateWifpa() {
			return certificateWifpa;
		}

		public String getNameOfBanner() {
			return nameOfBanner;
		}

		public String getLanguage() {
			return language;
		}

		public String getTypeOfFilm() {
			return typeOfFilm;
		}

		public String getMainActor() {
			return mainActor;
		}

		public String getMainActress() {
			return mainActress;
		}

		public Integer getNoOfPeopleInFilm() {
			return noOfPeopleInFilm;
		}

		public String getSynopsisOfFilm() {
			return synopsisOfFilm;
		}

		public TeamMember getCinematographer() {
			return cinematographer;
		}

		public TeamMember getLocalLineProducer() {
			return localLineProducer;
		}

		public TeamMember getArtDirector() {
			return artDirector;
		}

		public String getNatureOfFilm() {
			return natureOfFilm;
		}

		public void setId(Integer id) {
			this.id = id;
		}

		public void setName(String name) {
			this.name = name;
		}

		public void setDirector(TeamMember director) {
			this.director = director;
		}

		public void setCertificateImap(String certificateImap) {
			this.certificateImap = certificateImap;
		}

		public void setCertificateWifpa(String certificateWifpa) {
			this.certificateWifpa = certificateWifpa;
		}

		public void setNameOfBanner(String nameOfBanner) {
			this.nameOfBanner = nameOfBanner;
		}

		public void setLanguage(String language) {
			this.language = language;
		}

		public void setTypeOfFilm(String typeOfFilm) {
			this.typeOfFilm = typeOfFilm;
		}

		public void setMainActor(String mainActor) {
			this.mainActor = mainActor;
		}

		public void setMainActress(String mainActress) {
			this.mainActress = mainActress;
		}

		public void setNoOfPeopleInFilm(Integer noOfPeopleInFilm) {
			this.noOfPeopleInFilm = noOfPeopleInFilm;
		}

		public void setSynopsisOfFilm(String synopsisOfFilm) {
			this.synopsisOfFilm = synopsisOfFilm;
		}

		public void setCinematographer(TeamMember cinematographer) {
			this.cinematographer = cinematographer;
		}

		public void setLocalLineProducer(TeamMember localLineProducer) {
			this.localLineProducer = localLineProducer;
		}

		public void setArtDirector(TeamMember artDirector) {
			this.artDirector = artDirector;
		}

		public void setNatureOfFilm(String natureOfFilm) {
			this.natureOfFilm = natureOfFilm;
		}
	    
	    
	
}
