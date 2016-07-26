
package com.niit.shoppingcart;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shoppingcart.dao.UserDAO;
import com.niit.shoppingcart.model.User;

public class UserTest {
	
	
	public static void main(String[] args) {
		
		@SuppressWarnings("resource")
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		
		context.scan("com.niit.shoppingcart");
		context.refresh();
		
		
	   UserDAO userDAO = 	(UserDAO) context.getBean("userDAO");
	   
	   User user = 	(User) context.getBean("user");
	   user.setId("us120");
	   user.setName("usName120");
	   user.setPassword("password");
	   user.setMobile("99999999");
	   user.setMail("aaa@gmail.com");
	   user.setAddress("chennai");
	   
	   
	   
	   
	   userDAO.saveOrUpdate(user);
	   
	   
	   
	   
		
		
	}

}
