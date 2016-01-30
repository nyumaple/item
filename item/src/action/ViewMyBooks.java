/*package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.opensymphony.xwork2.*;

import domain.*;
import exception.HrException;

import org.apache.struts2.interceptor.*;

import service.UserManager;
import vo.*;

import java.util.*;
import java.text.SimpleDateFormat;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ViewMyBooks extends UserBaseAction
{
	private UserManager userManager;
	private List<Item> books;
	private User user;
	
	public String execute()
		throws Exception
	{
		ActionContext ctx = ActionContext.getContext();
		String username = (String)ctx.getSession()
			.get(WebConstant.USER);
		System.out.println(username);
		List<Item> result = userManager.MyBooks(username);
		setUser(userManager.findByName(username));
		setBooks(result);
		
		return SUCCESS;
	}
}*/