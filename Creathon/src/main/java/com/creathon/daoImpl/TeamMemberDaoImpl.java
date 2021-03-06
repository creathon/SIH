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
	public TeamMember findTeamMemberById(Integer teamMemberId) {
		System.out.println("inside deleteTeamMember daoImpl-->"+teamMemberId);
		try{
			
			TeamMember teamMember =(TeamMember) sessionFactory.getCurrentSession().createQuery("from TeamMember where id="+teamMemberId).uniqueResult();
			return teamMember;
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
		
	}
	
	@Override
	public Integer deleteTeamMember(Integer teamMemberId) {
		System.out.println("inside deleteTeamMember daoImpl-->"+teamMemberId);
		int result = 0;
		try{
			TeamMember teamMember = findTeamMemberById(teamMemberId);
			System.out.println(teamMember);
			sessionFactory.getCurrentSession().delete(teamMember);
			//int result =sessionFactory.getCurrentSession().createSQLQuery("delete from team_member where id="+teamMemberId).executeUpdate();
			result = 1;
		}catch(Exception e){
			e.printStackTrace();			
		}
		return result;
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

	@Override
	public List<TeamMember> listOfDirector(Integer productionHouseId) {
		// TODO Auto-generated method stub
				List<TeamMember> listOfDirector = null;
				try{
					listOfDirector = sessionFactory.getCurrentSession().createQuery("From TeamMember where production_house_id=" +productionHouseId+"and designation_id="+2).list();
				
				}catch(Exception e){
					e.printStackTrace();
					return null;
				}
				
				return listOfDirector;
	}

	@Override
	public List<TeamMember> listOfCinematographer(Integer productionHouseId) {
		// TODO Auto-generated method stub
		List<TeamMember> listOfCinematographer = null;
		try{
			listOfCinematographer = sessionFactory.getCurrentSession().createQuery("From TeamMember where production_house_id=" +productionHouseId+"and designation_id="+5).list();
		
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
		
		return listOfCinematographer;
	}

	@Override
	public List<TeamMember> listOfLocalLineProducer(Integer productionHouseId) {
		// TODO Auto-generated method stub
				List<TeamMember> listOfLocalLineProducer = null;
				try{
					listOfLocalLineProducer = sessionFactory.getCurrentSession().createQuery("From TeamMember where production_house_id=" +productionHouseId+"and designation_id="+3).list();
				
				}catch(Exception e){
					e.printStackTrace();
					return null;
				}
				
				return listOfLocalLineProducer;
	}

	@Override
	public List<TeamMember> listOfArtDirector(Integer productionHouseId) {
		// TODO Auto-generated method stub
		List<TeamMember> listOfArtDirector = null;
		try{
			listOfArtDirector = sessionFactory.getCurrentSession().createQuery("From TeamMember where production_house_id=" +productionHouseId+"and designation_id="+4).list();
		
			}catch(Exception e){
			e.printStackTrace();
			return null;
		}
		
		return listOfArtDirector;
	}

	@Override
	public List<TeamMember> listOfCameraman(Integer productionHouseId) {
		return sessionFactory.getCurrentSession().createQuery("from TeamMember where production_house_id=:productionHouseId and designation_id="+6).setParameter("productionHouseId",productionHouseId).list();
	}

}
