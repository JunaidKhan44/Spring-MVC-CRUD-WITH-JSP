/**
 * 
 */
package com.springmvc.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.springmvc.model.Product;

/**
 * @author Junaid Khan
 *
 */

@Component
public class ProductDao {

	@Autowired
	private HibernateTemplate  hibernateTemplate;
	
	
	
	@Transactional
	public void createProduct(Product product) {
		
		this.hibernateTemplate.saveOrUpdate(product);
	}
	
	
	public List<Product> getAllProduct(){
		
		 List<Product> lst =this.hibernateTemplate.loadAll(Product.class);
		
		return lst;
	}
	
	
	
	@Transactional
	public void deleteProduct(int pid) {
		
		Product product=this.hibernateTemplate.load(Product.class, pid);
		this.hibernateTemplate.delete(product);
	}
	
	
	public Product getSingleProduct(int pid) {

		return this.hibernateTemplate.get(Product.class, pid);
		
	}
}
