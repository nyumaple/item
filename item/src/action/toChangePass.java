/*package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.opensymphony.xwork2.*;

import domain.*;
import exception.HrException;

import org.apache.struts2.interceptor.*;

import service.UserManager;
import static service.UserManager.*;


public class toChangePass
	extends UserBaseAction
{

    private final String oldfalse = "old";
	private final String newfalse = "two";
    private final String change_ok = "success";	

    private String oldpass;
	private String newpass1;
	private String newpass2;
	private String tip;
	
	
	public void setOldpass(String oldpass)
	{
	    this.oldpass = oldpass;
	}
	
	public String getOldpass()
	{
	    return this.oldpass;
	}
	
	public void setNewpass1(String newpass1)
	{
	    this.newpass1 = newpass1;
	}
	
	public String getNewpass1()
	{
	  return this.newpass1;
	}
	
	public void setNewpass2(String newpass2)
	{
	    this.newpass2 = newpass2;
	}
	
	public String getNewpass2()
	{
	  return this.newpass2;
	}

	public void setTip(String tip)
	{
		this.tip = tip;
	}
	public String getTip()
	{
		return this.tip;
	}
	public String execute()
		throws Exception
	{
	    ActionContext ctx = ActionContext.getContext();
		String n = (String)ctx.getSession().get(WebConstant.USER);
		System.out.println(n);
		
		System.out.println(oldpass);
	    User temp = mgr.findByName(n);
		System.out.println(temp.getPass());
		if(oldpass.equals(temp.getPass()))
		{
		    if(newpass1.equals(newpass2))
			{
			    temp.setPass(newpass1);
				mgr.updateUser(temp);
				setTip("密码修改成功！");
			}
			else
			{
			    setTip("两次新密码输入不一致！");
			    return newfalse;
			}
		}
	    else
		{
		    setTip("旧密码输入错误");
			return oldfalse;
		}
		return "success";
	}
}*/