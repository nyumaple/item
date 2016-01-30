package dao;

import java.util.List;

import domain.Order;

import java.util.*; 

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

public class OrderDaoHibernate 
extends HibernateDaoSupport
implements OrderDao {

	@Override
	public Order get(Integer id) {
		return (Order)getHibernateTemplate().get(Order.class, id);
	}

	@Override
	public Integer save(Order order) {
		return (Integer)getHibernateTemplate().save(order);
	}

	@Override
	public void update(Order order) {
		getHibernateTemplate().update(order);
	}

	@Override
	public void delete(Order order) {
		getHibernateTemplate().delete(order);
	}

	@Override
	public void delete(Integer id) {
	    getHibernateTemplate().delete(get(id));
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Order> findAll() {
		return (List<Order>)getHibernateTemplate().find("from Order");
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Order> findOrdersByUser(String username) {
		return (List<Order>)getHibernateTemplate().find("from Order o where o.username = ?", username);
	}

}
