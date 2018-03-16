package com.creathon.dao;

import java.util.List;

import com.creathon.bean.Films;

public interface FilmsDao {

	public Films saveOrUpdate(Films film);
	public List<Films> findAllByProductionHouseId(Integer productionHouseId);
}
