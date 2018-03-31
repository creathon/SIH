package com.creathon.serviceImpl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.creathon.bean.ShootApplication;
import com.creathon.dao.AdminDao;
import com.creathon.service.AdminService;
import com.creathon.service.ShootApplicationService;

@Service
public class AdminServiceImpl implements AdminService{

	@Autowired
	AdminDao adminDao;
	
	@Autowired
	ShootApplicationService shootApplicationService;
	
	@Override
	public List<ShootApplication> notViewedApplicationList() {
		// TODO Auto-generated method stub
		List<Integer> applicationIntegerList = adminDao.notViewedApplicationList();
		List<ShootApplication> notViewedApplicationList = new ArrayList<ShootApplication>();
		for (Integer applicationId : applicationIntegerList) {
			ShootApplication shootApplication2 = shootApplicationService.findById(applicationId);
			notViewedApplicationList.add(shootApplication2);
		}
		return notViewedApplicationList;
	}

}
