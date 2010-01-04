package com.living.service;

import java.io.Serializable;
import java.util.List;

import com.framework.service.BaseService;
import com.living.model.ShopingCar;

public interface ShopingCarService extends BaseService {
	List<ShopingCar> findByUserId(Serializable uid);
}
