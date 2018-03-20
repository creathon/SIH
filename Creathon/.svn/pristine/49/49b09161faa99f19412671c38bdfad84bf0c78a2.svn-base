package com.creathon.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.creathon.bean.LocationType;
import com.creathon.dao.LocationTypeDao;
import com.creathon.service.LocationTypeService;




@Service
public class LocationTypeServiceImpl implements LocationTypeService {

	
	@Autowired
	LocationTypeDao locationTypeDao;
	
	@Override
	public List<LocationType> findAll() {
		// TODO Auto-generated method stub
		return locationTypeDao.findAll();
	}

}
