package com.creathon.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.creathon.bean.Location;
import com.creathon.dao.LocationDao;
import com.creathon.service.LocationService;

@Service
public class LocationServiceImpl implements LocationService{

	@Autowired
	private LocationDao locationDao;

	@Override
	public List<Location> location() {
		// TODO Auto-generated method stub
		return locationDao.location();
	}

	@Override
	public Location locationById(Integer locationId) {
		// TODO Auto-generated method stub
		return locationDao.locationById(locationId);
	}

	@Override
	public Boolean saveandupdate(Location location) {
		// TODO Auto-generated method stub
		return locationDao.saveandupdate(location);
	}
}
