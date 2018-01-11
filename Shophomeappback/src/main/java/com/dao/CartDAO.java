
package com.dao;

import java.util.List;

import com.model.Cart;

public interface CartDAO 
{
	public void insert(Cart cm);
	public List<Cart> findCartById(String userID) ;
	public Cart getCartByID(int cartId,String userEmail);
	public void deleteCart(int cartId);
	public void update(Cart cm);
}
