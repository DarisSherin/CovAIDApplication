package com.miniproject.CovAIDApp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.miniproject.CovAIDApp.DAO.CovAIDAppDAO;
import com.miniproject.CovAIDApp.model.Request;
import com.miniproject.CovAIDApp.model.User;

@Service
public class CovAIDAppServiceImpl implements CovAIDAppService {

	@Autowired
	private CovAIDAppDAO covAIDAppDAO;

	@Transactional
	@Override
	public void save(User user) {
		covAIDAppDAO.save(user);
		
	}

	@Transactional
	@Override
	public User getUser(String uname) {
		return covAIDAppDAO.getUser(uname);
	}

	@Transactional
	@Override
	public void save(Request request) {
		covAIDAppDAO.save(request);
		
	}

	@Override
	public List<Request> get() {
		return covAIDAppDAO.get();
	}

	@Override
	public void delete(int reqid) {
		covAIDAppDAO.delete(reqid);
		
	}

}
