package com.creathon.serviceImpl;

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

}
