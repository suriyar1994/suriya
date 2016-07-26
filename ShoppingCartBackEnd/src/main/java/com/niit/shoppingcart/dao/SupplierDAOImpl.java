package com.niit.shoppingcart.dao;

import java.util.List;


import javax.transaction.Transactional;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.shoppingcart.model.Supplier;

@SuppressWarnings("unused")
@Repository("supplierDAO")
public class SupplierDAOImpl implements SupplierDAO {
	

	@Autowired
	private SessionFactory sessionFactory;


	public SupplierDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}



	@Transactional
	public void saveOrUpdate(Supplier category) {
		sessionFactory.getCurrentSession().saveOrUpdate(category);
			
	}

	@Transactional
	public void delete(String id) {
		Supplier category = new Supplier();
		category.setId(id);
		sessionFactory.getCurrentSession().delete(category);
	}

	@SuppressWarnings("unchecked")
	@Transactional
	public Supplier get(String id) {
		String hql = "from Supplier where id=" + "'"+ id +"'";
		//  from category where id = '101'
		Query query =  sessionFactory.getCurrentSession().createQuery(hql);
		List<Supplier> listSupplier = (List<Supplier>) query.list();
		
		if (listSupplier != null && !listSupplier.isEmpty()) {
			return listSupplier.get(0);
		}
		return null;
	}
	
	@Transactional
	public List<Supplier> list() {
		@SuppressWarnings("unchecked")
		List<Supplier> listSupplier = (List<Supplier>) 
		          sessionFactory.getCurrentSession()
				.createCriteria(Supplier.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		return listSupplier;
	}
	
	


}
