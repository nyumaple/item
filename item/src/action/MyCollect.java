/*package action;

import java.util.ArrayList;
import java.util.List;

import lombok.Getter;
import lombok.Setter;
import service.*;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import domain.*;

@Getter
@Setter
public class MyCollect extends ActionSupport{

	private CollectManager collectManager;
	private UserManager userManager;
	private List<Item> books;
	
	public String execute() throws Exception
	{
		ActionContext ctx = ActionContext.getContext();
		String username = (String)ctx.getSession()
				.get(WebConstant.USER);
		List<Collect> temp = collectManager.findByUsername(username);
		books = new ArrayList<Item>();
		if(temp.size()!=0)
		{
			for(Collect u: temp)
			{
			    books.add(userManager.findBook(u.getB_id()));
			}
		}
		return "success";
	}
}
*/