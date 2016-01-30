/*package action;

import lombok.Getter;
import lombok.Setter;
import service.UserManager;

import com.opensymphony.xwork2.ActionSupport;

import domain.*;

@Getter
@Setter
public class ModifyBook extends ActionSupport{

	private UserManager userManager;
	private Integer id;
	private String name;
	private String num;
	private String kind;
	private String price;
	
	public String execute() throws Exception
	{
		Item book =userManager.findBook(id);
		book.setKind(kind);
		book.setName(name);
		book.setNum(num);
		book.setPrice(price);
		userManager.updateBook(book);
		return "successs";
	}
}
*/