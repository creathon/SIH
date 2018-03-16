package com.creathon.daoImpl;

import java.util.List;

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

	@Override
	public Integer deleteTeamMember(Integer teamMemberId) {
		System.out.println("inside deleteTeamMember daoImpl-->"+teamMemberId);
		try{
			int result =sessionFactory.getCurrentSession().createSQLQuery("delete from team_member where id="+teamMemberId).executeUpdate();
			return result;
		}catch(Exception e){
			e.printStackTrace();
			return 0;
		}
		
	}
	
	@Override
	public List<TeamMember> listOfTeamMemberByProdId(Integer productionHouseId) {
		// TODO Auto-generated method stub
		List<TeamMember> listTeamMember = null;
		try{
			listTeamMember = sessionFactory.getCurrentSession().createQuery("From TeamMember where production_house_id=" +productionHouseId).list();
		
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
		
		return listTeamMember;
	}

}
