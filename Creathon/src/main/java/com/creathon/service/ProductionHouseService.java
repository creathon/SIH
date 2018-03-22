package com.creathon.service;

import com.creathon.bean.ProductionHouse;

public interface ProductionHouseService {

	public ProductionHouse findByEmail(String email);
	public Boolean saveandupdate(ProductionHouse productionHouse);
	public Long getProductionHouseCount();
}
