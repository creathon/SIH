package com.creathon.service;

import java.util.List;

import com.creathon.bean.ShootApplication;

public interface ManageApplicationService {

	public List<ShootApplication> listOfShootApplication();
	public List<ShootApplication> listOfShootApplicationByViewStatus(String viewStatus);
	public List<ShootApplication> listOfApprovedApplications();
	public List<ShootApplication> listOfRejectedApplications();
	public ShootApplication findByApplicationId(Integer applicationId);
	public List<ShootApplication> listOfShootApplication(Integer proId);
}
