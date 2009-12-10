package com.living.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.framework.service.impl.BaseServiceImpl;
import com.living.dao.CountryDao;
import com.living.service.CountryService;

@Service
public class CountryServiceImpl extends BaseServiceImpl implements
		CountryService {

	@Autowired
	public CountryServiceImpl(CountryDao defaultDao) {
		super(defaultDao);
	}

}
