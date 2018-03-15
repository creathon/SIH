package com.creathon.daoImpl;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.creathon.bean.User;
import com.creathon.dao.UserDao;

@Repository
@Transactional
public class UserDaoImpl implements UserDao{

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public User validateUser(User user) {

		user=(User) sessionFactory.getCurrentSession().createQuery("from User where username =:username and password =:password").setString("username", user.getUsername()).setString("password",user.getPassword()).uniqueResult();
		return user;
	}

	@Override
	public User findById(Integer id) {
		User user = null;
				
		try
		{
			user = (User) sessionFactory.getCurrentSession().createQuery("from User where id =:id").setInteger("id",id).uniqueResult();
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return user;
	}

	@Override
	public User findByEmail(String email) {
		// TODO Auto-generated method stub
		return null;
	}

	
}
