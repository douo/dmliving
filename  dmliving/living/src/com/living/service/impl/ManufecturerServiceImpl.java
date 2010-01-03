package com.living.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.framework.service.impl.BaseServiceImpl;
import com.living.dao.ManufecturerDao;
import com.living.service.ManufecturerService;

@Service
public class ManufecturerServiceImpl extends BaseServiceImpl implements ManufecturerService {

	@Autowired
	public ManufecturerServiceImpl(ManufecturerDao defaultDao) {
		super(defaultDao);
	}

}
