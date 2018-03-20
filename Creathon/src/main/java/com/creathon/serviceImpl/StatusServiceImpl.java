package com.creathon.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.creathon.bean.Status;
import com.creathon.dao.StatusDao;
import com.creathon.service.StatusService;

@Service
public class StatusServiceImpl implements StatusService{

	@Autowired
	StatusDao statusDao;
	
	@Override
	public List<Status> listOfStatus() {
		// TODO Auto-generated method stub
		return statusDao.listOfStatus();
	}

	@Override
	public Status findById(Integer statusId) {
		// TODO Auto-generated method stub
		return statusDao.findById(statusId);
	}

}
