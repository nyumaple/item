package service;

import vo.*;
import domain.*;
import exception.*;

import java.util.*;


public interface UserManager
{
	public static final int LOGIN_FAIL = 0;

	public static final int LOGIN_USER = 1;

	public static final int LOGIN_MGR = 2;

	public static final int USERNAME_FAIL=4;

    public static final int REGIST=5;    
	
    //validate login
	int validLogin(User user);

	//validate register
	int validRegist(User user);
	
	//add User into database
	void addUser(User user)
		throws HrException;
	
	//delete user
	void deleteUser(Integer id)
        throws HrException;

	//find user by username
    User findByName(String name);		
	
    //update information of user
	void updateUser(User user);
	
	//find user by userId
	User findById(Integer id);
		 

}