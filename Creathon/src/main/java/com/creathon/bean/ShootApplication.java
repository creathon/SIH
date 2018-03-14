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
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author rkahar
 */
@Entity
@Table(name = "shoot_application")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "ShootApplication.findAll", query = "SELECT s FROM ShootApplication s"),
    @NamedQuery(name = "ShootApplication.findById", query = "SELECT s FROM ShootApplication s WHERE s.id = :id"),
    @NamedQuery(name = "ShootApplication.findByProductionHouseId", query = "SELECT s FROM ShootApplication s WHERE s.productionHouseId = :productionHouseId"),
    @NamedQuery(name = "ShootApplication.findByFilmId", query = "SELECT s FROM ShootApplication s WHERE s.filmId = :filmId"),
    @NamedQuery(name = "ShootApplication.findByLocationId", query = "SELECT s FROM ShootApplication s WHERE s.locationId = :locationId"),
    @NamedQuery(name = "ShootApplication.findByNoPeopleInCast", query = "SELECT s FROM ShootApplication s WHERE s.noPeopleInCast = :noPeopleInCast"),
    @NamedQuery(name = "ShootApplication.findByDateOfShooting", query = "SELECT s FROM ShootApplication s WHERE s.dateOfShooting = :dateOfShooting"),
    @NamedQuery(name = "ShootApplication.findByTimeOfShooting", query = "SELECT s FROM ShootApplication s WHERE s.timeOfShooting = :timeOfShooting"),
    @NamedQuery(name = "ShootApplication.findByScriptId", query = "SELECT s FROM ShootApplication s WHERE s.scriptId = :scriptId"),
    @NamedQuery(name = "ShootApplication.findByPlaceOfStay", query = "SELECT s FROM ShootApplication s WHERE s.placeOfStay = :placeOfStay"),
    @NamedQuery(name = "ShootApplication.findByPeriodOfStay", query = "SELECT s FROM ShootApplication s WHERE s.periodOfStay = :periodOfStay"),
    @NamedQuery(name = "ShootApplication.findByEquipmentToBeUsed", query = "SELECT s FROM ShootApplication s WHERE s.equipmentToBeUsed = :equipmentToBeUsed"),
    @NamedQuery(name = "ShootApplication.findByDateOfRelease", query = "SELECT s FROM ShootApplication s WHERE s.dateOfRelease = :dateOfRelease"),
    @NamedQuery(name = "ShootApplication.findByFilmingInAnyForestArea", query = "SELECT s FROM ShootApplication s WHERE s.filmingInAnyForestArea = :filmingInAnyForestArea"),
    @NamedQuery(name = "ShootApplication.findByDetailOfForestArea", query = "SELECT s FROM ShootApplication s WHERE s.detailOfForestArea = :detailOfForestArea"),
    @NamedQuery(name = "ShootApplication.findByFilmingInAnyDefenseArea", query = "SELECT s FROM ShootApplication s WHERE s.filmingInAnyDefenseArea = :filmingInAnyDefenseArea"),
    @NamedQuery(name = "ShootApplication.findByDetailOfDefenseArea", query = "SELECT s FROM ShootApplication s WHERE s.detailOfDefenseArea = :detailOfDefenseArea"),
    @NamedQuery(name = "ShootApplication.findByStatus", query = "SELECT s FROM ShootApplication s WHERE s.status = :status"),
    @NamedQuery(name = "ShootApplication.findByViewStatus", query = "SELECT s FROM ShootApplication s WHERE s.viewStatus = :viewStatus")})
public class ShootApplication implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @Column(name = "production_house_id")
    private int productionHouseId;
    @Basic(optional = false)
    @Column(name = "film_id")
    private int filmId;
    @Basic(optional = false)
    @Column(name = "location_id")
    private int locationId;
    @Basic(optional = false)
    @Column(name = "no_people_in_cast")
    private String noPeopleInCast;
    @Basic(optional = false)
    @Column(name = "date_of_shooting")
    private String dateOfShooting;
    @Basic(optional = false)
    @Column(name = "time_of_shooting")
    private String timeOfShooting;
    @Basic(optional = false)
    @Column(name = "script_id")
    private int scriptId;
    @Basic(optional = false)
    @Column(name = "place_of_stay")
    private String placeOfStay;
    @Basic(optional = false)
    @Column(name = "period_of_stay")
    private String periodOfStay;
    @Basic(optional = false)
    @Column(name = "equipment_to_be_used")
    private String equipmentToBeUsed;
    @Basic(optional = false)
    @Column(name = "date_of_release")
    private String dateOfRelease;
    @Basic(optional = false)
    @Column(name = "filming_in_any_forest_area")
    private String filmingInAnyForestArea;
    @Column(name = "detail_of_forest_area")
    private String detailOfForestArea;
    @Basic(optional = false)
    @Column(name = "filming_in_any_defense_area")
    private String filmingInAnyDefenseArea;
    @Basic(optional = false)
    @Column(name = "detail_of_defense area")
    private String detailOfDefenseArea;
    @Basic(optional = false)
    @Column(name = "status")
    private String status;
    @Basic(optional = false)
    @Column(name = "view_status")
    private String viewStatus;

    public ShootApplication() {
    }

    public ShootApplication(Integer id) {
        this.id = id;
    }

    public ShootApplication(Integer id, int productionHouseId, int filmId, int locationId, String noPeopleInCast, String dateOfShooting, String timeOfShooting, int scriptId, String placeOfStay, String periodOfStay, String equipmentToBeUsed, String dateOfRelease, String filmingInAnyForestArea, String filmingInAnyDefenseArea, String detailOfDefenseArea, String status, String viewStatus) {
        this.id = id;
        this.productionHouseId = productionHouseId;
        this.filmId = filmId;
        this.locationId = locationId;
        this.noPeopleInCast = noPeopleInCast;
        this.dateOfShooting = dateOfShooting;
        this.timeOfShooting = timeOfShooting;
        this.scriptId = scriptId;
        this.placeOfStay = placeOfStay;
        this.periodOfStay = periodOfStay;
        this.equipmentToBeUsed = equipmentToBeUsed;
        this.dateOfRelease = dateOfRelease;
        this.filmingInAnyForestArea = filmingInAnyForestArea;
        this.filmingInAnyDefenseArea = filmingInAnyDefenseArea;
        this.detailOfDefenseArea = detailOfDefenseArea;
        this.status = status;
        this.viewStatus = viewStatus;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public int getProductionHouseId() {
        return productionHouseId;
    }

    public void setProductionHouseId(int productionHouseId) {
        this.productionHouseId = productionHouseId;
    }

    public int getFilmId() {
        return filmId;
    }

    public void setFilmId(int filmId) {
        this.filmId = filmId;
    }

    public int getLocationId() {
        return locationId;
    }

    public void setLocationId(int locationId) {
        this.locationId = locationId;
    }

    public String getNoPeopleInCast() {
        return noPeopleInCast;
    }

    public void setNoPeopleInCast(String noPeopleInCast) {
        this.noPeopleInCast = noPeopleInCast;
    }

    public String getDateOfShooting() {
        return dateOfShooting;
    }

    public void setDateOfShooting(String dateOfShooting) {
        this.dateOfShooting = dateOfShooting;
    }

    public String getTimeOfShooting() {
        return timeOfShooting;
    }

    public void setTimeOfShooting(String timeOfShooting) {
        this.timeOfShooting = timeOfShooting;
    }

    public int getScriptId() {
        return scriptId;
    }

    public void setScriptId(int scriptId) {
        this.scriptId = scriptId;
    }

    public String getPlaceOfStay() {
        return placeOfStay;
    }

    public void setPlaceOfStay(String placeOfStay) {
        this.placeOfStay = placeOfStay;
    }

    public String getPeriodOfStay() {
        return periodOfStay;
    }

    public void setPeriodOfStay(String periodOfStay) {
        this.periodOfStay = periodOfStay;
    }

    public String getEquipmentToBeUsed() {
        return equipmentToBeUsed;
    }

    public void setEquipmentToBeUsed(String equipmentToBeUsed) {
        this.equipmentToBeUsed = equipmentToBeUsed;
    }

    public String getDateOfRelease() {
        return dateOfRelease;
    }

    public void setDateOfRelease(String dateOfRelease) {
        this.dateOfRelease = dateOfRelease;
    }

    public String getFilmingInAnyForestArea() {
        return filmingInAnyForestArea;
    }

    public void setFilmingInAnyForestArea(String filmingInAnyForestArea) {
        this.filmingInAnyForestArea = filmingInAnyForestArea;
    }

    public String getDetailOfForestArea() {
        return detailOfForestArea;
    }

    public void setDetailOfForestArea(String detailOfForestArea) {
        this.detailOfForestArea = detailOfForestArea;
    }

    public String getFilmingInAnyDefenseArea() {
        return filmingInAnyDefenseArea;
    }

    public void setFilmingInAnyDefenseArea(String filmingInAnyDefenseArea) {
        this.filmingInAnyDefenseArea = filmingInAnyDefenseArea;
    }

    public String getDetailOfDefenseArea() {
        return detailOfDefenseArea;
    }

    public void setDetailOfDefenseArea(String detailOfDefenseArea) {
        this.detailOfDefenseArea = detailOfDefenseArea;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getViewStatus() {
        return viewStatus;
    }

    public void setViewStatus(String viewStatus) {
        this.viewStatus = viewStatus;
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
        if (!(object instanceof ShootApplication)) {
            return false;
        }
        ShootApplication other = (ShootApplication) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.creathon.bean.ShootApplication[ id=" + id + " ]";
    }
    
}
