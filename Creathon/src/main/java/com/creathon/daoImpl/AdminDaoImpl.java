package com.creathon.daoImpl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.creathon.bean.ShootApplication;
import com.creathon.dao.AdminDao;

@Transactional
@Repository
public class AdminDaoImpl implements AdminDao{

	@Autowired
	SessionFactory sessionFactory;
	
	@Override
	public List<ShootApplication> notViewedApplicationList() {

		List<ShootApplication> notViewedApplicationList = null;
		try {
			notViewedApplicationList = sessionFactory.getCurrentSession().createSQLQuery("SELECT * FROM `shoot_application` where date_of_submission<=DATE_SUB(NOW(),INTERVAL 2 DAY) and status ="+'1').list();
			System.out.println(notViewedApplicationList);
			return notViewedApplicationList;
		}catch(Exception e) {
			e.printStackTrace();
			return null;
		}
		
	}

	/*SELECT * FROM `shoot_application` where date_of_submission<=DATE_SUB(NOW(),INTERVAL 2 DAY) and status='1';*/
	
}
