package com.creathon.daoImpl;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.creathon.bean.TeamMember;
import com.creathon.dao.TeamMemberDao;

@Transactional
@Repository
public class TeamMemberDaoImpl implements TeamMemberDao{

	@Autowired
	SessionFactory sessionFactory;
	
	@Override
	public Boolean saveAndUpdate(TeamMember teamMember) {

		try{
			sessionFactory.getCurrentSession().saveOrUpdate(teamMember);
			return true;
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
	}

}
