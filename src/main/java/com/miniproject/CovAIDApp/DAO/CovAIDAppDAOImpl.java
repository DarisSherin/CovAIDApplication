package com.miniproject.CovAIDApp.DAO;

import java.util.List;

import javax.persistence.EntityManager;

import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.miniproject.CovAIDApp.model.Request;
import com.miniproject.CovAIDApp.model.User;

@Repository
public class CovAIDAppDAOImpl implements CovAIDAppDAO {
	

	@Autowired
	private EntityManager entityManager;

	@Override
	public void save(User user) {
		Session currentSession = entityManager.unwrap(Session.class);
		currentSession.saveOrUpdate(user);		
	}

	@Override
	public User getUser(String uname) {
				Session currentSession = entityManager.unwrap(Session.class);
				Query<User> query = currentSession.createQuery("from User", User.class);
				List<User> list = query.getResultList();
				for(User userList:list)
				{
					if(userList.getName().equals(uname)) {
		                 return userList;
						
					}
				}
				return null;
		}

	@Override
	public void save(Request request) {
		Session currentSession = entityManager.unwrap(Session.class);
		currentSession.saveOrUpdate(request);		
		
	}

	@Override
	public List<Request> get() {
		Session currentSession = entityManager.unwrap(Session.class);
		Query<Request> query = currentSession.createQuery("from Request", Request.class);
		List<Request> list = query.getResultList();
		return list;
	}

	@Override
	public void delete(int reqid) {
		Session currentSession = entityManager.unwrap(Session.class);
		Request requestObj = currentSession.get(Request.class, reqid);
		currentSession.delete(requestObj);
		
	}
	}

