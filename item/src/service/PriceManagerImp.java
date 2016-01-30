package service;

import java.util.List;

import lombok.Getter;
import lombok.Setter;
import dao.*;
import domain.*;
import service.*;
import exception.HrException;


@Getter
@Setter

public class PriceManagerImp implements PriceManager{

	private UserDao userDao;
    private ItemDao itemDao;
	private PriceDao priceDao;
	
	@Override
	public Integer addPrice() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deletePrice(Integer id) {
		// TODO Auto-generated method stub
	}

	@Override
	public Price findByItemIdAndKind(Integer ItemId, String price_kind) {
		return priceDao.findByItemIdAndKind(ItemId, price_kind).get(0);
	}

	@Override
	public void updatePrice(Integer ItemId, List<Integer> blank_qty,
			List<Double> blank_price, List<Integer> embroidery_qty,
			List<Double> embroidery_price, List<Integer> fullcolor_qty,
			List<Double> fullcolor_price, List<Integer> printed_qty,
			List<Double> printed_price, List<Integer> cmyk_qty,
			List<Double> cmyk_price) {
		Price blank = priceDao.findByItemIdAndKind(ItemId, "blank").get(0);
		System.out.println(blank.getId());
		System.out.println(blank.getPrice1());
		Price embroidery = priceDao.findByItemIdAndKind(ItemId, "embroidery").get(0);
		Price fullcolor = priceDao.findByItemIdAndKind(ItemId, "fullcolor").get(0);
		Price printed = priceDao.findByItemIdAndKind(ItemId, "printed").get(0);
		Price cmyk = priceDao.findByItemIdAndKind(ItemId, "cmyk").get(0);
		
		blank.setPrice1(blank_price.get(0));blank.setQty1(blank_qty.get(0));
		blank.setPrice2(blank_price.get(1));blank.setQty2(blank_qty.get(1));
		blank.setPrice3(blank_price.get(2));blank.setQty3(blank_qty.get(2));
		blank.setPrice4(blank_price.get(3));blank.setQty4(blank_qty.get(3));
		blank.setPrice5(blank_price.get(4));blank.setQty5(blank_qty.get(4));
		blank.setPrice6(blank_price.get(5));blank.setQty6(blank_qty.get(5));
		blank.setPrice7(blank_price.get(6));blank.setQty7(blank_qty.get(6));
		
		embroidery.setPrice1(embroidery_price.get(0));embroidery.setQty1(embroidery_qty.get(0));
		embroidery.setPrice2(embroidery_price.get(1));embroidery.setQty2(embroidery_qty.get(1));
		embroidery.setPrice3(embroidery_price.get(2));embroidery.setQty3(embroidery_qty.get(2));
		embroidery.setPrice4(embroidery_price.get(3));embroidery.setQty4(embroidery_qty.get(3));
		embroidery.setPrice5(embroidery_price.get(4));embroidery.setQty5(embroidery_qty.get(4));
		embroidery.setPrice6(embroidery_price.get(5));embroidery.setQty6(embroidery_qty.get(5));
		embroidery.setPrice7(embroidery_price.get(6));embroidery.setQty7(embroidery_qty.get(6));
		
		fullcolor.setPrice1(fullcolor_price.get(0));fullcolor.setQty1(fullcolor_qty.get(0));
		fullcolor.setPrice2(fullcolor_price.get(1));fullcolor.setQty2(fullcolor_qty.get(1));
		fullcolor.setPrice3(fullcolor_price.get(2));fullcolor.setQty3(fullcolor_qty.get(2));
		fullcolor.setPrice4(fullcolor_price.get(3));fullcolor.setQty4(fullcolor_qty.get(3));
		fullcolor.setPrice5(fullcolor_price.get(4));fullcolor.setQty5(fullcolor_qty.get(4));
		fullcolor.setPrice6(fullcolor_price.get(5));fullcolor.setQty6(fullcolor_qty.get(5));
		fullcolor.setPrice7(fullcolor_price.get(6));fullcolor.setQty7(fullcolor_qty.get(6));
		
		printed.setPrice1(printed_price.get(0));printed.setQty1(printed_qty.get(0));
		printed.setPrice2(printed_price.get(1));printed.setQty2(printed_qty.get(1));
		printed.setPrice3(printed_price.get(2));printed.setQty3(printed_qty.get(2));
		printed.setPrice4(printed_price.get(3));printed.setQty4(printed_qty.get(3));
		printed.setPrice5(printed_price.get(4));printed.setQty5(printed_qty.get(4));
		printed.setPrice6(printed_price.get(5));printed.setQty6(printed_qty.get(5));
		printed.setPrice7(printed_price.get(6));printed.setQty7(printed_qty.get(6));
		
		cmyk.setPrice1(cmyk_price.get(0));cmyk.setQty1(cmyk_qty.get(0));
		cmyk.setPrice2(cmyk_price.get(1));cmyk.setQty2(cmyk_qty.get(1));
		cmyk.setPrice3(cmyk_price.get(2));cmyk.setQty3(cmyk_qty.get(2));
		cmyk.setPrice4(cmyk_price.get(3));cmyk.setQty4(cmyk_qty.get(3));
		cmyk.setPrice5(cmyk_price.get(4));cmyk.setQty5(cmyk_qty.get(4));
		cmyk.setPrice6(cmyk_price.get(5));cmyk.setQty6(cmyk_qty.get(5));
		cmyk.setPrice7(cmyk_price.get(6));cmyk.setQty7(cmyk_qty.get(6));
		
		priceDao.update(blank);
		priceDao.update(embroidery);
		priceDao.update(fullcolor);
		priceDao.update(printed);
		priceDao.update(cmyk);
	}
	
	

}
