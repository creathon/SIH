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


	@Override
	public Boolean saveandupdate(ProductionHouse productionHouse) {
		// TODO Auto-generated method stub
		return productionHouseDao.saveandupdate(productionHouse);
	}


	@Override
	public Long getProductionHouseCount() {
		// TODO Auto-generated method stub
		return productionHouseDao.getProductionHouseCount();
	}

	
	
}
