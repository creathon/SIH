package com.creathon.daoImpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.creathon.bean.ShootApplication;
import com.creathon.dao.ManageApplicationDao;

@Transactional
@Repository
public class ManageApplicationDaoImpl implements ManageApplicationDao{

	
	@Autowired
	SessionFactory sessionFactory;
	
	@Override
	public List<ShootApplication> listOfShootApplication() {
		List<ShootApplication> shootAppList = null;
		try{
			shootAppList = sessionFactory.getCurrentSession().createQuery("from ShootApplication").list();
			return shootAppList;
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public ShootApplication findByApplicationId(Integer applicationId) {
		// TODO Auto-generated method stub
		ShootApplication shootApplication = new ShootApplication();
		try{
			shootApplication = (ShootApplication) sessionFactory.getCurrentSession().createQuery("from ShootApplication where id="+applicationId).uniqueResult();
			return shootApplication;
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}

}
