package dao;

import java.util.*; 

import domain.*;

public interface PriceDao {
	//get item by itemId
		Price get(Integer id);

		//save item to database, return itemId
		Integer save(List<Integer>qty, List<Double>price,
				String price_kind,Integer ItemId);

		//update item info to databse
		void update(Price price);

	    //delete item
		void delete(Price price);

		//delete item by itemId
		void delete(Integer id);

		//find all items
		List<Price> findAll();
		
		//find item by price_kind, ItemId
		List<Price> findByItemIdAndKind(Integer ItemId, String price_kind);
}
