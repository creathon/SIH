package com.creathon.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.creathon.bean.TeamMember;
import com.creathon.dao.TeamMemberDao;
import com.creathon.service.TeamMemberService;

@Service
public class TeamMemberServiceImpl implements TeamMemberService{

	@Autowired
	TeamMemberDao teamMemberDao;
	
	@Override
	public Boolean saveAndUpdate(TeamMember teamMember) {
		// TODO Auto-generated method stub
		return teamMemberDao.saveAndUpdate(teamMember);
	}

	@Override
	public Integer deleteTeamMember(Integer teamMemberId) {
		return teamMemberDao.deleteTeamMember(teamMemberId);
	}

	@Override
	public List<TeamMember> listOfTeamMemberByProdId(Integer productionHouseId) {
		// TODO Auto-generated method stub
		return teamMemberDao.listOfTeamMemberByProdId(productionHouseId);
	}

	@Override
	public List<TeamMember> listOfDirector(Integer productionHouseId) {
		// TODO Auto-generated method stub
		return teamMemberDao.listOfDirector(productionHouseId);
	}

	@Override
	public List<TeamMember> listOfCinematographer(Integer productionHouseId) {
		// TODO Auto-generated method stub
		return teamMemberDao.listOfCinematographer(productionHouseId);
	}

	@Override
	public List<TeamMember> listOfLocalLineProducer(Integer productionHouseId) {
		// TODO Auto-generated method stub
		return teamMemberDao.listOfLocalLineProducer(productionHouseId);
	}

	@Override
	public List<TeamMember> listOfArtDirector(Integer productionHouseId) {
		// TODO Auto-generated method stub
		return teamMemberDao.listOfArtDirector(productionHouseId);
	}

	@Override
	public TeamMember findTeamMemberById(Integer teamMemberId) {
		// TODO Auto-generated method stub
		return teamMemberDao.findTeamMemberById(teamMemberId);
	}

	@Override
	public List<TeamMember> listOfCameraman(Integer productionHouseId) {
		return teamMemberDao.listOfCameraman(productionHouseId);
	}

}
