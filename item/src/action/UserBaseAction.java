package action;

import com.opensymphony.xwork2.ActionSupport;

import service.UserManager;

public class UserBaseAction
	extends ActionSupport
{
	
	private static final long serialVersionUID = -247741641691118422L;
	
	protected UserManager userMgr;

	public void setUserManager(UserManager userMgr)
	{
		this.userMgr = userMgr;
	}
}