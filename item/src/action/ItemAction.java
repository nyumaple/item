package action;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.List;
import javax.annotation.Resource;

import lombok.Getter;
import lombok.Setter;

import com.opensymphony.xwork2.*;

import domain.*;

import org.apache.struts2.ServletActionContext;

import service.ItemManager;
import service.*;

@Getter
@Setter
@Resource
public class ItemAction<UserService> extends ActionSupport{
	
	//objects
    //private Item item;
    /**
	 * 
	 */
	private static final long serialVersionUID = -8954253824502524071L;
	
	//update Item
	private Integer updateId;
	
	//Detailed Item
	private Integer detailedId;
	private Item detailedItem;
	private Price blankPrice;
	private Price embroideryPrice;
	private Price fullcolorPrice;
	private Price printedPrice;
	private Price cmykPrice;

	//describe
    private String describe;
   
    private ItemManager itemManager;
    private PriceManager priceManager;
    
    //price info
    private String item_type;
    private String item_kind;
    private Integer minorders;
    
    private List<Integer> blank_qty;
    private List<Double> blank_price;
    private List<Integer> embroidery_qty;
    private List<Double> embroidery_price;
    private List<Integer> fullcolor_qty;
    private List<Double> fullcolor_price;
    private List<Integer> printed_qty;
    private List<Double> printed_price;
    private List<Integer> cmyk_qty;
    private List<Double> cmyk_price;
    
    
    private File excelFile;//input file
    private String excelFileContentType;//type{input file,filename}
    private String excelFileFileName;  //file name  
    private String savePath;//save path
   
    private String imgpath;
    /*add*/
    
    private Integer deleteId;
    /*delete*/
   
    @SuppressWarnings("deprecation")
	public String getSavePath() throws Exception{
    	String s = ServletActionContext.getRequest().getContextPath();
    	return ServletActionContext.getRequest().getRealPath(s);//getContextPath();//getRealPath(); //absolute path
    }
    
   

         
	 private final String ADD_SUCCESS = "book_success";
	 
	// private final String ADD_FAILED = "book_failed";
	 
	 private String tip;
	 
	 //constructor
	 public ItemAction()
	 {
		 
	 }
	 
	 
	 
	 public String addItem()
	       throws Exception
	{
		 ActionContext ctx = ActionContext.getContext();
		 
		 if(getExcelFileFileName()!=null){
			 String filename = item_type + ".png";
		 System.out.println("filename:  "+filename);
		 System.out.println("savepath:  "+getSavePath());
		 FileOutputStream fos = new FileOutputStream(getSavePath() + filename);
         //item.setImgpath(filename);
         setImgpath(filename);
          //创建文件输入流，输入流指定了要写入的文件
         FileInputStream fis = new FileInputStream(getExcelFile());
         System.out.println(getExcelFileFileName());
          //进行文件读写
          //创建buffer
          byte [] buffer = new byte[1024];
          int len = 0;
          while ((len = fis .read(buffer )) > 0)
                 fos.write( buffer,0, len);

		 }
		  else{
			 setImgpath("");
		 }

		 System.out.println("!!!!!!!!!!!!!");
  		 System.out.println(imgpath);
		 //array processing
		 
		 itemManager.addItem(item_kind, item_type, 
				 blank_qty, blank_price, embroidery_qty, 
				 embroidery_price, fullcolor_qty, fullcolor_price, 
				 printed_qty, printed_price, cmyk_qty, cmyk_price, 
				 imgpath, describe, blank_price.get(0), minorders);
		
		// itemManager.addItem(item_type, item_type, 
		//		 blank, embroidery, fullColor, printed, cmyk, 
		//		 imgpth, describe);
		 

	    setTip("添加成功");
	    return "success";
	}
	 
	public String deleteItem()
	throws Exception{
		itemManager.deleteItem(deleteId);
		return "success";
	}
	
	public String updateItem()
	throws Exception{
				System.out.println(updateId);
				System.out.println(item_kind);
				System.out.println(item_type);
				System.out.println(describe);
				itemManager.updateItem(updateId,item_kind, item_type, describe);
				return "success";
	}

	
	public String seeDetail()
	throws Exception{
		
		setDetailedItem(itemManager.findItemById(detailedId));
		System.out.println(detailedId);
		blankPrice = priceManager.findByItemIdAndKind(detailedId, "blank");
		embroideryPrice = priceManager.findByItemIdAndKind(detailedId, "embroidery");
		fullcolorPrice = priceManager.findByItemIdAndKind(detailedId, "fullcolor");
		printedPrice = priceManager.findByItemIdAndKind(detailedId, "printed");
		cmykPrice = priceManager.findByItemIdAndKind(detailedId, "cmyk");
		
		return "success";
	}
	
	public String updatePrices()
	throws Exception{
		System.out.println(blank_qty.get(0));
		System.out.println(blank_price.get(0));
		System.out.println(embroidery_qty.size());
		System.out.println(fullcolor_qty.size());
		System.out.println(printed_qty.size());
		System.out.println(cmyk_qty.size());
		priceManager.updatePrice(updateId, blank_qty, blank_price, embroidery_qty, embroidery_price, fullcolor_qty, fullcolor_price, printed_qty, printed_price, cmyk_qty, cmyk_price);
		
		return "success";
	}
	

}
