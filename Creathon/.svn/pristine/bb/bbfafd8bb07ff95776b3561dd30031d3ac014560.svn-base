package com.creathon.daoImpl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.creathon.bean.LocationType;
import com.creathon.dao.LocationTypeDao;
@Transactional
@Repository
public class LocationTypeDaoImpl implements LocationTypeDao {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	
	@Override
	public List<LocationType> findAll() {
		 return sessionFactory.getCurrentSession().createQuery("from LocationType").list();
	}

}
