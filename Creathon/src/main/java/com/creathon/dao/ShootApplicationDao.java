package com.creathon.dao;

import com.creathon.bean.ShootApplication;

public interface ShootApplicationDao {

	
	public ShootApplication findById(Integer shootApplicationId);
	public Boolean save(ShootApplication shootApplication);
	public Boolean update(Integer shootApplicationId, Integer statusId);
	public Long getshootApplicationCount();
	
}
