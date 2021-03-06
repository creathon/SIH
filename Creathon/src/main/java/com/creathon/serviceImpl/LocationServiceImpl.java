package com.creathon.serviceImpl;

import java.io.File;
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
		return locationDao.location();
	}

	@Override
	public Location locationById(Integer locationId) {
		return locationDao.locationById(locationId);
	}

	@Override
	public Boolean saveandupdate(Location location) {
		
		return locationDao.saveandupdate(location);
	}

	@Override
	public List<Location> findByAgencyId(Integer agencyId) {
		List<Location> locationList = locationDao.findByAgencyId(agencyId);
		for(Location location:locationList)
		{
		String path =new File("").getAbsolutePath()+location.getPhoto();
		location.setPhoto(path);
		}
		return locationList;
	}

	@Override
	public Long getLocationCount() {
		// TODO Auto-generated method stub
		return locationDao.getLocationCount();
	}
}
