/*package action;
import java.io.FileInputStream;
import java.io.FileOutputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import lombok.Getter;
import lombok.Setter;

import com.opensymphony.xwork2.*;

import domain.*;
import exception.HrException;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.*;

import service.UserManager;
import static service.UserManager.*;
@Getter
@Setter
public class SellAction extends UserBaseAction
{
     //��װ�������
         private Item book;
         private UserManager userManager;
         
         private String excelFile ;            //代表输入文件 xxx
         private String excelFileContentType ;     //由struts2根据file表单封装好的xxxContentType 和 xxxFileName
         private String excelFileFileName ;
         private String savePath ;  
	 //
         
    @SuppressWarnings("deprecation")
	public String getSavePath() throws Exception
    {
    	return ServletActionContext.getRequest().getRealPath(savePath); //返回保存路径的绝对路径
    }
    
    public String testImexcel() throws Exception
    {
           //创建文件输出流，指定了输出的路径（保存的路径+文件的name）
          FileOutputStream fos = new FileOutputStream(getSavePath()+"\\" +getExcelFileFileName());
          System. out .println(getSavePath()+"\\" +getExcelFileFileName());
           //创建文件输入流，输入流指定了要写入的文件
          FileInputStream fis = new FileInputStream(getExcelFile());
          System. out .println(getExcelFile());
           //进行文件读写
           //创建buffer
           byte [] buffer = new byte[1024];
           int len = 0;
           while ((len = fis .read(buffer )) > 0)
                  fos.write( buffer,0, len);
           return "success" ;
    }

         
	 private final String ADD_SUCCESS = "book_success";
	 
	// private final String ADD_FAILED = "book_failed";
	 
	 private String tip;
	 
	 public SellAction()
	 {
	 }
	 
	 public SellAction(Item book,String tip)
	 {
	     this.book = book;
		 this.tip = tip;
	 }
	 
	 public String addBook()
	       throws Exception
	{
		 ActionContext ctx = ActionContext.getContext();
		 String username = (String)ctx.getSession().get("user_name");
		 
		 
		 if(getExcelFileFileName()!=null){
		 String a[]=getExcelFileFileName().split(".");
		 String filename = username+"_"+book.getName()+".png";
		 System.out.println(filename);
		 FileOutputStream fos = new FileOutputStream(getSavePath()+"\\" +filename);
         System. out .println(getSavePath()+"\\" +filename);
         book.setImgpath(filename);
          //创建文件输入流，输入流指定了要写入的文件
         FileInputStream fis = new FileInputStream(getExcelFile());
         System. out .println(getExcelFile());
          //进行文件读写
          //创建buffer
          byte [] buffer = new byte[1024];
          int len = 0;
          while ((len = fis .read(buffer )) > 0)
                 fos.write( buffer,0, len);

		 }
		 else{
			 book.setImgpath("");
		 }
		System.out.println(username);
	    book.setSelluser(username);
	    userManager.addBook(book);
	    setTip("添加成功");
	    return ADD_SUCCESS;
	}
	 

}
*/