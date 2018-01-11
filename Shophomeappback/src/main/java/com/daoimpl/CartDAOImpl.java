package com.daoimpl;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.model.Cart;

@Repository ("cartDAO")
public class CartDAOImpl 
{
	@Autowired
	SessionFactory sessionFac;
	public CartDAOImpl(SessionFactory sessionFac)
	{
		this.sessionFac = sessionFac;
		
	}
	
	public void insert(Cart cm)
	{
		Session session = sessionFac.openSession();
		session.beginTransaction();
		session.persist(cm);
		session.getTransaction().commit();
	}
	
	
	@SuppressWarnings("unchecked")
	public List<Cart> findCartById(String userEmail)
	{
		Session session = sessionFac.openSession();
		List<Cart> cr =null;
		try 
		{	
			session.beginTransaction();
			cr=(List<Cart>)session
					.createQuery("from Cart where userEmail= :email")
					.setString("email", userEmail).list();
			session.getTransaction().commit();
		}	
		catch(HibernateException e)
		{
			session.getTransaction().rollback();
			
		}
		return cr;
		
}
	public Cart getCartByID(int cartId, String userEmail)
	{
		Session session = sessionFac.openSession();
		Cart cr = null;
		try
		{
			session.beginTransaction();
			cr=(Cart)session
					.createQuery("from Cart where userEmail= :email and cartproductId= id")
					.setString("email", userEmail).setInteger("id",cartId).uniqueResult();
			session.getTransaction().commit();
			return cr;
			
		}catch(HibernateException e)
		{
			session.getTransaction().rollback();
		}
		return cr;
		
	}
	
	public void deleteCart(int cartId)
	{
		Session session = sessionFac.openSession();
		session.beginTransaction();
		Cart cr= (Cart)session.get(Cart.class, cartId);
		session.delete(cr);
		session.getTransaction().commit();
		
	}
	
	public void Update(Cart cm)
	{
		Session session = sessionFac.openSession();
		session.beginTransaction();
		session.update(cm);
		session .getTransaction().commit();
		
	}
	

}
