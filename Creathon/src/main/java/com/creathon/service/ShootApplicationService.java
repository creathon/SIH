package com.creathon.service;

import com.creathon.bean.ShootApplication;

public interface ShootApplicationService {

	
	public ShootApplication findById(Integer shootApplicationId);
	public Boolean save(ShootApplication shootApplication);
	public Boolean update(Integer shootApplicationId, Integer statusId);
	public Long getshootApplicationCount();
}
