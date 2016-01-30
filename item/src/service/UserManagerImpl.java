package service;

import service.*;
import vo.*;
import dao.*;
import domain.*;
import exception.*;

import java.text.*;
import java.util.*;

import lombok.Getter;
import lombok.Setter;


@Getter
@Setter
public class UserManagerImpl
	implements UserManager
{
    //daoContext
	private UserDao userDao;
	private ItemDao itemDao;
	private PriceDao priceDao;
	
	@Override
	public int validLogin(User mgr)
	{
		if (userDao.findByNameAndPass(mgr).size()
			>= 1)
		{
			return LOGIN_MGR;
		}
		else if (userDao.findByNameAndPass(mgr)
			.size() >= 1)
		{
			return LOGIN_USER;
		}
		else
		{
			return LOGIN_FAIL;
		}
	}
	
	@Override
	public int validRegist(User user)
	{
	    if(userDao.findByName(user.getName())!=null)
		{
		    return USERNAME_FAIL;
		}
		
		else 
		{
		    return REGIST;
		}
	}

	@Override
    public void addUser(User user)throws HrException
	{
		userDao.save(user);
	}
	
    @Override
	public User findByName(String name)
    {
	    return userDao.findByName(name);
    }	
	
	@Override
	public void updateUser(User user)
	{
	    userDao.update(user);
	}
	
	@Override
	public void deleteUser(Integer id)throws HrException
	{
	    userDao.delete(id);
	}
	
	@Override
	public User findById(Integer id) {
		return userDao.get(id);
	}
	
	

}