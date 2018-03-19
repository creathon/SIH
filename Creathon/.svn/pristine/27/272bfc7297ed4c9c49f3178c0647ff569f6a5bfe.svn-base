package com.creathon.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.creathon.bean.ShootApplication;
import com.creathon.dao.ManageApplicationDao;
import com.creathon.service.ManageApplicationService;

@Service
public class ManageApplicationServiceImpl implements ManageApplicationService{

	@Autowired
	ManageApplicationDao manageApplicationDao;
	
	@Override
	public List<ShootApplication> listOfShootApplication() {
		// TODO Auto-generated method stub
		return manageApplicationDao.listOfShootApplication();
	}

	@Override
	public ShootApplication findByApplicationId(Integer applicationId) {
		// TODO Auto-generated method stub
		return manageApplicationDao.findByApplicationId(applicationId);
	}

}
