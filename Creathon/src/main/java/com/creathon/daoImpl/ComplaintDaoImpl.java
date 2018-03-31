package com.creathon.daoImpl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.creathon.bean.Complaint;
import com.creathon.dao.ComplaintDao;

@Transactional
@Repository
public class ComplaintDaoImpl implements ComplaintDao {

	@Autowired
	SessionFactory sessionFactory;
	
	@Override
	public List<Complaint> allComplaints() {
		List<Complaint> notViewedApplicationList = null;
		try {
			notViewedApplicationList = sessionFactory.getCurrentSession().createSQLQuery("from Complaint").list();
			System.out.println(notViewedApplicationList);
			return notViewedApplicationList;
		}catch(Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	

}
