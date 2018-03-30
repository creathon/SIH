package com.creathon.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.creathon.bean.ShootApplication;
import com.creathon.dao.AdminDao;
import com.creathon.service.AdminService;

@Service
public class AdminServiceImpl implements AdminService{

	@Autowired
	AdminDao adminDao;
	
	@Override
	public List<ShootApplication> notViewedApplicationList() {
		// TODO Auto-generated method stub
		return adminDao.notViewedApplicationList();
	}

}
