package service;

import java.util.List;

import domain.Item;
import domain.User;
import exception.HrException;

public interface ItemManager {
	
	//add new item to database
	Integer addItem(String kind, String type,
			List<Integer> blank_qty,List<Double> blank_price, 
			List<Integer> embroidery_qty,List<Double> embroidery_price,
			List<Integer> fullcolor_qty,List<Double> fullcolor_price,
			List<Integer> printed_qty,List<Double> printed_price,
			List<Integer> cmyk_qty,List<Double> cmyk_price, 
			String imgpath, String describe, Double price, Integer minorders);
	
	//delete item
	void deleteItem(Integer id);
			 
	//find item by itemId
	Item findItemById(Integer id);

	//find user by username
    Item findByKindAndType(String kind, String type);		
	
    //update information of item
	void updateItem(Integer id, String type, String kind,String describe);

	List<Item> findByKind(String kind);
	
	List<Item> findAll();
}
