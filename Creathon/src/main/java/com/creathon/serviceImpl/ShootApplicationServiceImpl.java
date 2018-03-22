package com.creathon.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.creathon.bean.ShootApplication;
import com.creathon.dao.ShootApplicationDao;
import com.creathon.service.ShootApplicationService;

@Service
@Transactional
public class ShootApplicationServiceImpl implements ShootApplicationService {

	@Autowired
	private ShootApplicationDao shootApplicationDao;
	
	@Override
	public ShootApplication findById(Integer shootApplicationId) {
		// TODO Auto-generated method stub
		return shootApplicationDao.findById(shootApplicationId);
	}

	@Override
	@Transactional
	public Boolean save(ShootApplication shootApplication) {
		// TODO Auto-generated method stub
		return shootApplicationDao.save(shootApplication);
	}

	@Override
	public Boolean update(Integer shootApplicationId, Integer statusId) {
		// TODO Auto-generated method stub
		return shootApplicationDao.update(shootApplicationId, statusId);
	}

	@Override
	public Long getshootApplicationCount() {
		// TODO Auto-generated method stub
		return shootApplicationDao.getshootApplicationCount();
	}

}
