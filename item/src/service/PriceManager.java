package service;

import domain.*;
import java.util.*;

public interface PriceManager {
	Integer addPrice();
	
	//delete item
	void deletePrice(Integer id);
			 
	//find price by ItemId,price_kind
    Price findByItemIdAndKind(Integer ItemId, String price_kind);	

    void updatePrice(Integer ItemId, 
    		List<Integer>blank_qty,List<Double>blank_price,
    		List<Integer>embroidery_qty,List<Double>embroidery_price,
    		List<Integer>fullcolor_qty,List<Double>fullcolor_price,
    		List<Integer>printed_qty,List<Double>printed_price,
    		List<Integer>cmyk_qty,List<Double>cmyk_price);

}
