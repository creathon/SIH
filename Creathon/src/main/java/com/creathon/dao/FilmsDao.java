package com.creathon.dao;

import java.util.List;

import com.creathon.bean.Films;

public interface FilmsDao {

	public Boolean saveOrUpdate(Films film);
	public List<Films> findAllByProductionHouseId(Integer productionHouseId);
	public Integer deleteFilm(Integer filmId);
	public Films findByFilmId(Integer filmId);
	public Long getFilmCount();
}
