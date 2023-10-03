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
	
	
	//create
	@Transactional
	public void createProduct(Product product) {
		
		this.hibernateTemplate.saveOrUpdate(product);
	}
	
	//getall
	public List<Product> getAllProduct(){
		
		 List<Product> lst =this.hibernateTemplate.loadAll(Product.class);
		
		return lst;
	}
	
	
	//delete single record
	@Transactional
	public void deleteProduct(int pid) {
		
		Product product=this.hibernateTemplate.load(Product.class, pid);
		this.hibernateTemplate.delete(product);
	}
	
	// load single record
	public Product getSingleProduct(int pid) {

		return this.hibernateTemplate.get(Product.class, pid);
		
	}
}
