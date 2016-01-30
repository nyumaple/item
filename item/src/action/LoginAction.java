/*package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import lombok.Getter;
import lombok.Setter;

import com.opensymphony.xwork2.*;

import domain.*;
import exception.HrException;

import org.apache.struts2.interceptor.*;

import service.UserManager;
import static service.UserManager.*;

@Setter
@Getter
public class LoginAction
	extends UserBaseAction
{
	private final String USER_RESULT = "user";

	private final String MGR_RESULT = "mgr";

	private Manager manager;

	private String vercode;

	private String tip;


	public String execute()
		throws Exception
	{

		ActionContext ctx = ActionContext.getContext();
		//获取一个验证码
		String ver2 = (String)ctx.getSession().get("rand");
		if (vercode.equalsIgnoreCase(ver2))//��֤��
		{
			int result = mgr.validLogin(getManager());
			//��¼���Ϊ��ͨԱ��
			if (result == LOGIN_USER)
			{
				ctx.getSession().put(WebConstant.USER 
					, manager.getName());
				ctx.getSession().put(WebConstant.LEVEL
					, WebConstant.USER_LEVEL);
				setTip("用户登录成功");
				return USER_RESULT;
			}
			
			else if (result == LOGIN_MGR)
			{
				ctx.getSession().put(WebConstant.USER 
					, manager.getName());
				ctx.getSession().put(WebConstant.LEVEL
					, WebConstant.MGR_LEVEL);
				setTip("管理员登录");
				return MGR_RESULT;
			}
			//验证码错误
			else
			{
				setTip("密码错误");
				return ERROR;
			}
		}

		else
		{
			setTip("验证码错误");
			return ERROR;
		}
	}
}*/