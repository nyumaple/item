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

public class RegistAction
	extends UserBaseAction
{
	//����һ��������ΪԱ����¼�ɹ���Result��
	private final String REGIST_FAILED = "input";
	//����һ��������Ϊ�����¼�ɹ���Result��
	private final String REGIST_SUCCESS = "success";
	
	//��װ�������
	private User user;
	//ע�����֤��
	private String vercode;
	//�����¼�����ʾ��Ϣ
	private String tip;
	//manager���Ե�setter��getter����
	public void setUser(User user)
	{
		this.user = user;
	}
	public User getUser()
	{
		return this.user;
	}

	//vercode���Ե�setter��getter����
	public void setVercode(String vercode)
	{
		this.vercode = vercode;
	}
	public String getVercode()
	{
		return this.vercode;
	}

	//tip���Ե�setter��getter����
	public void setTip(String tip)
	{
		this.tip = tip;
	}
	public String getTip()
	{
		return this.tip;
	}
	//�����û�����
	public String execute()
		throws Exception
	{
		//����ActionContextʵ��
		ActionContext ctx = ActionContext.getContext();
		//��ȡHttpSession�е�rand����
		String ver2 = (String)ctx.getSession().get("rand");
		if (vercode.equalsIgnoreCase(ver2))//��֤��
		{
			//����ҵ���߼������������¼����
			int result = mgr.validRegist(getUser());
			//ע��ɹ�
			if (result == REGIST)
			{
				ctx.getSession().put(WebConstant.USER 
					, user.getName());
				ctx.getSession().put(WebConstant.LEVEL
					, WebConstant.USER_LEVEL);
				setTip("注册成功");
                      mgr.addUser(user);
				return REGIST_SUCCESS;
			}
			//ע��ʧ��
			else if (result == USERNAME_FAIL)
			{
				setTip("用户名已被注册");
				return REGIST_FAILED;
			}
		}
		//��֤�벻ƥ��
		else
		{
			setTip("验证码错误");
			return REGIST_FAILED;
		}
		return REGIST_FAILED;
	}
}*/