package com.creathon.dao;

import java.util.List;

import com.creathon.bean.ShootApplication;

public interface ManageApplicationDao {

	public List<ShootApplication> listOfShootApplication();
	public ShootApplication findByApplicationId(Integer applicationId);
}
