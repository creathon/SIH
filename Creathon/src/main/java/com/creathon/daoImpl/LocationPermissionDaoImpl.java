package com.creathon.daoImpl;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.creathon.bean.LocationPermission;
import com.creathon.dao.LocationPermissionDao;

@Repository
@Transactional
public class LocationPermissionDaoImpl implements LocationPermissionDao {

	@Autowired
	private SessionFactory sessionfactory;
	
	@Override
	public Boolean save(LocationPermission locationPermission) {
		Boolean result=false;
		try
		{
			sessionfactory.getCurrentSession().saveOrUpdate(locationPermission);
			result = true;
		}catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	
}
