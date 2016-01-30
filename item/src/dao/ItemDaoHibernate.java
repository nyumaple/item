package dao;

import java.util.*; 

import javax.servlet.*;

import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.hibernate.SessionFactory;
import org.hibernate.Session;
import org.hibernate.Query;
import org.hibernate.HibernateException;

import dao.*;
import domain.*;

import java.sql.SQLException;
import java.util.List;

public class ItemDaoHibernate
	extends HibernateDaoSupport
	implements ItemDao
{
	public Item get(Integer id)
	{
		return (Item)getHibernateTemplate().get(Item.class, id);
	}


	public Integer save(Item item)
	{
		return (Integer)getHibernateTemplate().save(item);
	}

	
	public void update(Item item)
	{
		getHibernateTemplate()
			.update(item);
	}

	
	public void delete(Item book)
	{
		getHibernateTemplate()
			.delete(book);
	}

	
	public void delete(Integer id)
	{
		Item item= (Item)this.get(id);
        if(item!=null)
        {
        	getHibernateTemplate().delete(item);
        }
        
	}

	@SuppressWarnings("unchecked")
	public List<Item> findAll()
	{
		return (List<Item>)getHibernateTemplate()
			.find("from Item");
	}
	
	@SuppressWarnings("unchecked")
	public List<Item> findByKindAndType(String kind, String type)
	{
		return (List<Item>)getHibernateTemplate()
			.find("from Item i where i.kind = ? and i.type = ?"
			, kind , type); 
	}


	@SuppressWarnings("unchecked")
	@Override
	public List<Item> findByKind(String kind) {
		System.out.println(kind);
		return (List<Item>)getHibernateTemplate()
				.find("from Item i where i.kind=?", kind);
	}


}
