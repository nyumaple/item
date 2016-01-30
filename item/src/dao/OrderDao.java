package dao;

import java.util.List;

import domain.Order;

public interface OrderDao {
	
	//get order by orderId
	Order get(Integer id);

	//save new order and return orderId
	Integer save(Order order);

	//update order info
	void update(Order order);

	//delete order
	void delete(Order order);

	//delete order by orderId
	void delete(Integer id);

	//find all orders
	List<Order> findAll();
	
	//find orders by username
	List<Order> findOrdersByUser(String name);
}
