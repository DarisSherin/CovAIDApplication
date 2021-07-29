package com.miniproject.CovAIDApp.service;

import java.util.List;

import com.miniproject.CovAIDApp.model.Request;
import com.miniproject.CovAIDApp.model.User;

public interface CovAIDAppService {
	
	List<Request> get();
	
	User getUser(String uname);
	
	void save(User user);
	
	void save(Request request);
	
	void delete(int reqid);

}
