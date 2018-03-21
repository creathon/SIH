package com.creathon.daoImpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.creathon.bean.ShootApplication;
import com.creathon.dao.ManageApplicationDao;

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

	public List<ShootApplication> listOfShootApplication(Integer proId) {
		List<ShootApplication> shootAppList = null;
		try{
			shootAppList = sessionFactory.getCurrentSession().createQuery("from ShootApplication where production_house_id=:proId").setInteger("proId", proId).list();
			return shootAppList;
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}
	@Override
	public ShootApplication findByApplicationId(Integer applicationId) {
		// TODO Auto-generated method stub
		ShootApplication shootApplication = null;
		try{
			shootApplication = (ShootApplication) sessionFactory.getCurrentSession().createQuery("from ShootApplication where id="+applicationId).uniqueResult();
			//shootApplication = (ShootApplication) sessionFactory.getCurrentSession().createCriteria(ShootApplication.class).add(Restrictions.eq("id", applicationId)).uniqueResult();
			//shootApplication = sessionFactory.getCurrentSession().get(ShootApplication.class, applicationId);
			sessionFactory.getCurrentSession().evict(shootApplication);
			return shootApplication;
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public List<ShootApplication> listOfShootApplicationByViewStatus(String viewStatus) {
		List<ShootApplication> shootAppList = null;
		try{
			shootAppList = sessionFactory.getCurrentSession().createQuery("from ShootApplication where viewStatus="+viewStatus).list();
			return shootAppList;
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public List<ShootApplication> listOfApprovedApplications() {
		List<ShootApplication> shootAppList = null;
		try{
			shootAppList = sessionFactory.getCurrentSession().createQuery("from ShootApplication where status="+6).list();
			return shootAppList;
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public List<ShootApplication> listOfRejectedApplications() {
		List<ShootApplication> shootAppList = null;
		try{
			shootAppList = sessionFactory.getCurrentSession().createQuery("from ShootApplication where status="+7).list();
			return shootAppList;
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}

}
