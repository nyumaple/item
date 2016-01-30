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


@Getter
@Setter
public class toChange
	extends UserBaseAction
{
	private UserManager userManager;
	private String phone;
	private String mail;
	private String qqhao;
	private String tip;
	
	
	public String execute()
		throws Exception
	{
	
	    ActionContext ctx = ActionContext.getContext();
		String name = (String)ctx.getSession().get(WebConstant.USER);
		User temp = userManager.findByName(name);
		if(mail!=null&&mail.length()!=0){
			temp.setMail(mail);
		}
       
		if(qqhao!=null&&qqhao.length()!=0){
			temp.setQq(qqhao);
		}
		
		if(phone!=null&&phone.length()!=0){
			temp.setPhone(phone);
		}

	    userManager.updateUser(temp);
		setTip("修改联系方式成功！");
		return "success";

	}
}*/