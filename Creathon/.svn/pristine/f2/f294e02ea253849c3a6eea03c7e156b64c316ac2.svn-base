package com.creathon.daoImpl;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.creathon.bean.ShootApplication;
import com.creathon.dao.ShootApplicationDao;

@Repository
@Transactional
public class ShootApplicationDaoImpl implements ShootApplicationDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public ShootApplication findById(Integer shootApplicationId) {
		return (ShootApplication) sessionFactory.getCurrentSession().createQuery("From ShootApplication where id=:id").setParameter("id", shootApplicationId).uniqueResult();

	}

	@Override
	public Boolean save(ShootApplication shootApplication) {
		// TODO Auto-generated method stub
		
		try{
				sessionFactory.getCurrentSession().saveOrUpdate(shootApplication);;
					return true;
		}catch (Exception e) {
			e.printStackTrace();
			return false;
		}

	}

}
