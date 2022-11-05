/*
 * MyUserService
 * This is my service implementation class
 *
 * Date:12th May 2022
 * 
 */
package com.abc.portal.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.abc.portal.dao.UserRepository;
import com.abc.portal.dto.User;
@Service
public class MyUserServiceImpl implements MyUserService {
	private PasswordEncoder passwordencoder;
	@Autowired
	UserRepository userrepo;
	
	
	User user;
	@Autowired
	public MyUserServiceImpl(PasswordEncoder encoder) {
		// TODO Auto-generated constructor stub
		this.passwordencoder=encoder;
	}
	List<User>showAllUser=new ArrayList<User>();
	
	@Override
	public String addUser(User us) {
		// TODO Auto-generated method stub
		us.setRole("USER");
		us.setPassword(passwordencoder.encode(us.getPassword()));
		 userrepo.save(us);
		 return "DATA ADDED";                           //adds data to the database
	}

	@Override
	public String updateUser(User us) {
		 us.setRole("USER");
		 userrepo.save(us);
		 return "DATA ADDED"; 
	}
	@Override
	public List<User> showAllUser() {
		// TODO Auto-generated method stub
		List<User> databaseall=userrepo.findAll();
		return databaseall;                            //gets data from database
	}

	@Override
	public User SearchUser(long id) {
		// TODO Auto-generated method stub
		Optional<User> myData=userrepo.findById(id);   //optional as there might we a case when id might not be there
		User l= myData.get();                          //used for update functionality
		return l;
	}


//	@Override
//	public void delete(long id) {
//		// TODO Auto-generated method stub
//		userrepo.deleteById(id);
//	}
	
	@Override
	public int delete(long id) {
		// TODO Auto-generated method stub
		userrepo.deleteById(id);
		return 1 ;
	}

	@Override
	public User SearchUser(String userName) {
		// TODO Auto-generated method stub
		user = userrepo.findByUserName(userName);
		return user;
	}
	
	@Override
	public User transUser(String username) {
		user = userrepo.findByUserName(username);
		return user;
		
	}

}
