package com.creathon.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.creathon.bean.Complaint;
import com.creathon.dao.ComplaintDao;
import com.creathon.service.ComplaintService;

@Service
public class ComplaintServiceImpl implements ComplaintService {

	@Autowired
	ComplaintDao complaintDao;
	@Override
	public List<Complaint> allComplaints() {
		// TODO Auto-generated method stub
		return complaintDao.allComplaints();
	}

}
