package service;

import java.util.List;

import lombok.Getter;
import lombok.Setter;
import dao.*;
import domain.Item;
import exception.HrException;


@Getter
@Setter
public class ItemManagerImpl implements ItemManager{

	private UserDao userDao;
    private ItemDao itemDao;
	private PriceDao priceDao;
    
    public ItemManagerImpl(){
    	
    }
    
	@Override
	public Integer addItem(String kind, String type, 
			List<Integer> blank_qty, List<Double> blank_price, 
			List<Integer> embroidery_qty,List<Double> embroidery_price,
			List<Integer> fullcolor_qty,List<Double> fullcolor_price,
			List<Integer> printed_qty,List<Double> printed_price, 
			List<Integer> cmyk_qty,List<Double> cmyk_price, String imgpath,
			String describe, Double price, Integer minorders)  {
		Integer ItemId = (Integer)itemDao.save(new Item(kind, type, minorders, price,imgpath,describe ));
		
		Integer size_blank = blank_qty.size();
		Integer size_embroidery = embroidery_qty.size();
		Integer size_fullcolor = fullcolor_qty.size();
		Integer size_printed = printed_qty.size();
		Integer size_cmyk = cmyk_qty.size();
		
		priceDao.save(blank_qty, blank_price, "blank", ItemId);
		priceDao.save(embroidery_qty, embroidery_price, "embroidery", ItemId);
		priceDao.save(fullcolor_qty, fullcolor_price, "fullcolor", ItemId);
		priceDao.save(printed_qty, printed_price, "printed", ItemId);
		priceDao.save(cmyk_qty, cmyk_price, "cmyk", ItemId);
		
		return ItemId;
	}

	@Override
	public void deleteItem(Integer id) {
		itemDao.delete(id);	
	}

	@Override
	public Item findItemById(Integer id) {
		return itemDao.get(id);
	}

	@Override
	public Item findByKindAndType(String kind, String type) {
		
		return ((List<Item>)itemDao.findByKindAndType(kind, type)).get(0);
	}

	public void updateItem(Integer id, String kind, String type, String describe) {
		
		System.out.println(id);
		Item temp = itemDao.get(id);
		temp.setType(type);
		temp.setKind(kind);
		temp.setDescribe(describe);
		itemDao.update(temp);
	}

	@Override
	public List<Item> findByKind(String kind) {
		return itemDao.findByKind(kind);
	}

	@Override
	public List<Item> findAll() {
		return (List<Item>)itemDao.findAll();
	}





}
