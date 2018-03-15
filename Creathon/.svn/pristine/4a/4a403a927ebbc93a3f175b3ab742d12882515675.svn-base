package com.creathon.serviceImpl;


import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.creathon.bean.ProductionHouse;
import com.creathon.dao.ProductionHouseDao;
import com.creathon.service.ProductionHouseService;
@Service
public class ProductionHouseServiceImpl implements ProductionHouseService {

	@Autowired
	private ProductionHouseDao productionHouseDao;
	
	
	@Override
	public ProductionHouse findByEmail(String email) {
		return productionHouseDao.findByEmail(email);
	}

	
	
}
