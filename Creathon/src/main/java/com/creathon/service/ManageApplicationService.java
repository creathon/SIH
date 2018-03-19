package com.creathon.service;

import java.util.List;

import com.creathon.bean.ShootApplication;

public interface ManageApplicationService {

	public List<ShootApplication> listOfShootApplication();
	public ShootApplication findByApplicationId(Integer applicationId);
	
}
