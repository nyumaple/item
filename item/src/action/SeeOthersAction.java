/*package action;

import lombok.Getter;
import lombok.Setter;
import service.UserManager;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import domain.*;

import java.util.*;

@Getter
@Setter
public class SeeOthersAction extends ActionSupport{
	private UserManager userManager;
	private String username;
	private List<Item> books;
	private User user;
	
	
	public String execute() throws Exception
	{
		ActionContext ctx = ActionContext.getContext();
		String user_name = (String) ctx.getSession().get("user_name");
		if(username.equals(user_name))
		{
			return "myshop";
		}
		else
		{
			List<Item> result = userManager.MyBooks(username);
			setUser(userManager.findByName(username));
			setBooks(result);
			return "success";
		}
	}

}*/
