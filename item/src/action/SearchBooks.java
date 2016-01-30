/*package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.opensymphony.xwork2.*;

import domain.*;
import exception.HrException;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.*;

import service.UserManager;
import vo.*;

import java.util.*;
import java.text.SimpleDateFormat;

import lombok.Getter;
import lombok.Setter;


@Getter
@Setter
public class SearchBooks extends UserBaseAction
{
    private String name;
	private String kind;
	private String num;
	private String tip;
	private List<Item> result; //搜索结果
	private List<User> userResult; //卖家
	private String imgpath;
	
	public void setName(String name)
	{
	    this.name = name;
	}
	
	public String getName()
	{
	    return this.name;
	}
	
	public void setKind(String kind)
	{
	    this.kind = kind;
	}
	
	public String getKind()
	{
	    return this.kind;
	}
	
	public void setNum(String num)
	{
	    this.num = num;
	}
	
	public String getNum()
	{
	    return this.num;
	}
	
	public void setTip(String tip)
	{
	    this.tip = tip;
	}
	
	public String getTip()
	{
	    return this.tip;
	}
	
	public void setResult(List<Item> result)
	{
	    this.result=result;
	}
	
	public List<Item> getResult()
	{
	    return this.result;
	}
	
	public String execute()
	{
		String path = "\\bookpicture"+"\\";
		imgpath =ServletActionContext.getRequest().getRealPath(path);
		System.out.println(imgpath);
	    List<Item> temp =mgr.SearchBooks(name,kind, num);
		
		System.out.println(name);
		System.out.println(kind);
		System.out.println(num);
		setResult(temp);
		userResult = new ArrayList<User>();
		if(temp!=null)
		for(int i=0;i<temp.size();i++)
		{
			userResult.add(mgr.findByName(temp.get(i).getSelluser()));
		}
		
		//for(Book u: result)
		//{
		//	u.setImgpath(imgpath+"\\"+u.getImgpath());
		//}
	    return "success";
	}

}
*/