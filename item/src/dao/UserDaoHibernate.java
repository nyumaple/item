package dao;

import java.util.*; 

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import domain.*;


public class UserDaoHibernate
	extends HibernateDaoSupport
	implements UserDao
{

	public User get(Integer id)
	{
		return getHibernateTemplate()
			.get(User.class , id);
	}

	public Integer save(User user)
	{
		return (Integer)getHibernateTemplate()
			.save(user);
	}

	public void update(User user)
	{
		getHibernateTemplate()
			.update(user);
	}
	
	public void delete(User user)
	{
		getHibernateTemplate()
			.delete(user);
	}

	public void delete(Integer id)
	{
		getHibernateTemplate()
			.delete(get(id));
	}

	@SuppressWarnings("unchecked")
	public List<User> findAll()
	{
		return (List<User>)getHibernateTemplate()
			.find("from User");
	}

	@SuppressWarnings("unchecked")
	public List<User> findByNameAndPass(User user)
	{
		return (List<User>)getHibernateTemplate()
			.find("from User u where u.name = ? and u.pass=?"
			, user.getName() , user.getPass()); 
	}

	@SuppressWarnings("unchecked")
	public User findByName(String name)
	{
		List<User> users = (List<User>)getHibernateTemplate()
			.find("from User where name = ? " , name);
		if (users!= null && users.size() >= 1)
		{
			return users.get(0);
		}
		return null;
	}


}
