package action;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.List;
import java.sql.*;

import org.springframework.util.*;

import javax.annotation.Resource;

import org.apache.struts2.interceptor.*;

import lombok.Getter;
import lombok.Setter;

import com.opensymphony.xwork2.*;

import domain.*;

import org.apache.struts2.ServletActionContext;

import service.ItemManager;
import service.ItemManagerImpl;

@Getter
@Setter
@Resource

public class DifferentKind {
	
	private ItemManager itemManager;
	private String kind;
	private List<Item> ans;
	
	public String findOverview()
			throws Exception
	{
		ans = itemManager.findAll();
		return "success";
	}
	
	public String findApparel()
	{
		ans = itemManager.findByKind("Apparel");
		kind = "Apparel";
		return "success";
	}
	
	public String findBags()
	{
		ans = itemManager.findByKind("Bags");
		kind = "Bags";
		return "success";
	}

	public String findBalloon()
	{
		ans = itemManager.findByKind("Balloon");
		kind = "Balloon";
		return "success";
	}
	
	public String findCup()
	{
		ans = itemManager.findByKind("Cup");
		kind = "Cup";
		return "success";
	}
	
	public String findKeyrings()
	{
		ans = itemManager.findByKind("Keyrings");
		kind = "Keyrings";
		return "success";
	}
	
	public String findNotebook()
	{
		ans = itemManager.findByKind("Notebook");
		kind = "Notebook";
		return "success";
	}
	
	public String findPen()
	{
		ans = itemManager.findByKind("Pen");
		kind = "Pen";
		return "success";
	}
	
	public String findPrize()
	{
		ans = itemManager.findByKind("Prize");
		kind = "Prize";
		return "success";
	}
	
	public String findStickers()
	{
		ans = itemManager.findByKind("Stickers");
		kind = "Stickers";
		return "success";
	}
	
	public String findToys()
	{
		ans = itemManager.findByKind("Toys");
		kind = "Toys";
		return "success";
	}
	
	public String findUmbrella()
	{
		ans = itemManager.findByKind("Umbrella");
		kind = "Umbrella";
		return "success";
	}
}
