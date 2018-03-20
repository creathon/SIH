package com.creathon.dao;

import com.creathon.bean.LocationPermission;

public interface LocationPermissionDao {

public Boolean save(com.creathon.bean.LocationPermission locationPermission);
public LocationPermission findByShootAppIdAgnId(Integer shootApplicationId, Integer agencyId);
public Boolean update(LocationPermission locationPermission);
}
