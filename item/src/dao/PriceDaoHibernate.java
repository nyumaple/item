package dao;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import domain.Price;

public class PriceDaoHibernate 
extends HibernateDaoSupport
implements PriceDao {

	@Override
	public Price get(Integer id) {
		return (Price)getHibernateTemplate().get(Price.class,id);
	}
	
	@Override
	public Integer save(List<Integer> qty, List<Double> price,
			String price_kind, Integer ItemId) {
		Integer size = qty.size();
		Price temp = new Price();
		temp.setItemId(ItemId);
		temp.setPrice_kind(price_kind);
		temp.setQty1(qty.get(0));temp.setPrice1(price.get(0));
		temp.setQty2(qty.get(1));temp.setPrice2(price.get(1));
		temp.setQty3(qty.get(2));temp.setPrice3(price.get(2));
		temp.setQty4(qty.get(3));temp.setPrice4(price.get(3));
		temp.setQty5(qty.get(4));temp.setPrice5(price.get(4));
		temp.setQty6(qty.get(5));temp.setPrice6(price.get(5));
		temp.setQty7(qty.get(6));temp.setPrice7(price.get(6));
		
		return (Integer)getHibernateTemplate().save(temp);
	}

	public void update(Price price) {
		getHibernateTemplate().update(price);
	}

	@Override
	public void delete(Price price) {
		getHibernateTemplate().delete(price);
	}

	@Override
	public void delete(Integer id) {
		getHibernateTemplate().delete(get(id));
	}

	@Override
	public List<Price> findAll() {
		// TODO Auto-generated method stub
		return (List<Price>)getHibernateTemplate().find("from Price");
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Price> findByItemIdAndKind(Integer ItemId, String price_kind) {
		return (List<Price>)
				getHibernateTemplate().
				find("from Price where ItemId =? and price_kind = ? ",
						ItemId, price_kind);
	}

}
