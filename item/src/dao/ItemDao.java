package dao;

import java.util.*; 

import domain.*;

public interface ItemDao
{

	//get item by itemId
	Item get(Integer id);

	//save item to database, return itemId
	Integer save(Item item);

	//update item info to databse
	void update(Item item);

    //delete item
	void delete(Item item);

	//delete item by itemId
	void delete(Integer id);

	//find all items
	List<Item> findAll();

	//find item by kind and type
	List<Item> findByKindAndType(String kind, String type);
	
	List<Item> findByKind(String kind);

}
