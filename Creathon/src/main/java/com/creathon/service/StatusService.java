package com.creathon.service;

import java.util.List;

import com.creathon.bean.Status;

public interface StatusService {

	public List<Status> listOfStatus();
	public Status findById(Integer statusId);
}
