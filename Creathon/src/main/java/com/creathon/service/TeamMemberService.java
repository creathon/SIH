package com.creathon.service;

import java.util.List;

import com.creathon.bean.TeamMember;

public interface TeamMemberService {

	public Boolean saveAndUpdate(TeamMember teamMember);
	public Integer deleteTeamMember(Integer teamMemberId);
	public List<TeamMember> listOfTeamMemberByProdId(Integer productionHouseId);
}
