package com.creathon.daoImpl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.creathon.bean.Cities;
import com.creathon.bean.States;
import com.creathon.dao.CommonDao;

@Transactional
@Repository
public class CommonDaoImpl implements CommonDao{

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public List<States> findStateByCountryId(Integer countryId) {
		List<States> stateList = null;
		try
		{
			stateList = sessionFactory.getCurrentSession().createQuery("from States where country_id="+countryId).list();
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return stateList;
	}

	@Override
	public List<Cities> findCitiesByStateId(Integer stateId) {
		List<Cities> cityList = null;
		try
		{
			cityList = sessionFactory.getCurrentSession().createQuery("from Cities where state_id"+stateId).list();
		}catch(Exception e)
		{
			e.printStackTrace();
			return null;
		}
		return cityList;
	
	}

}
