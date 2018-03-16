package com.creathon.dao;

import java.util.List;

import com.creathon.bean.TeamMember;

public interface TeamMemberDao {

	public Boolean saveAndUpdate(TeamMember teamMember);
	public Integer deleteTeamMember(Integer teamMemberId);
	public List<TeamMember> listOfTeamMemberByProdId(Integer productionHouseId);
}
