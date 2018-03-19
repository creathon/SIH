package com.creathon.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.creathon.bean.ShootApplication;
import com.creathon.dao.ShootApplicationDao;
import com.creathon.service.ShootApplicationService;

@Service
public class ShootApplicationServiceImpl implements ShootApplicationService {

	@Autowired
	private ShootApplicationDao shootApplicationDao;
	
	@Override
	public ShootApplication findById(Integer shootApplicationId) {
		// TODO Auto-generated method stub
		return shootApplicationDao.findById(shootApplicationId);
	}

	@Override
	public Boolean save(ShootApplication shootApplication) {
		// TODO Auto-generated method stub
		return shootApplicationDao.save(shootApplication);
	}

}
