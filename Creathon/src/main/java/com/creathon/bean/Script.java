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
@Table(name = "script")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Script.findAll", query = "SELECT s FROM Script s"),
    @NamedQuery(name = "Script.findById", query = "SELECT s FROM Script s WHERE s.id = :id"),
    @NamedQuery(name = "Script.findByFilmId", query = "SELECT s FROM Script s WHERE s.filmId = :filmId"),
    @NamedQuery(name = "Script.findByScript", query = "SELECT s FROM Script s WHERE s.script = :script")})
public class Script implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @Column(name = "film_id")
    private int filmId;
    @Basic(optional = false)
    @Column(name = "script")
    private String script;

    public Script() {
    }

    public Script(Integer id) {
        this.id = id;
    }

    public Script(Integer id, int filmId, String script) {
        this.id = id;
        this.filmId = filmId;
        this.script = script;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public int getFilmId() {
        return filmId;
    }

    public void setFilmId(int filmId) {
        this.filmId = filmId;
    }

    public String getScript() {
        return script;
    }

    public void setScript(String script) {
        this.script = script;
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
        if (!(object instanceof Script)) {
            return false;
        }
        Script other = (Script) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.creathon.bean.Script[ id=" + id + " ]";
    }
    
}
