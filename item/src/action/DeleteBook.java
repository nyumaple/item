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
public class DeleteBook
	extends UserBaseAction
{
	UserManager userManager;

	private Integer bookId;
	
	private String tip;

	public String execute()
		throws Exception
	{
		//����ActionContextʵ��
		System.out.println(bookId);
		
		userManager.deleteById(bookId);
		return "success";
	}
}*/