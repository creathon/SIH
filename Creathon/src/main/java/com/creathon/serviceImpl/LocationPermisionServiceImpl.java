package com.creathon.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.creathon.bean.LocationPermission;
import com.creathon.dao.LocationPermissionDao;
import com.creathon.service.LocationPermissionService;

@Service
public class LocationPermisionServiceImpl implements LocationPermissionService {

	@Autowired
	private LocationPermissionDao locationPermissionDao;
	
	@Override
	public Boolean save(LocationPermission locationPermission) {
		// TODO Auto-generated method stub
		return locationPermissionDao.save(locationPermission);
	}

}
