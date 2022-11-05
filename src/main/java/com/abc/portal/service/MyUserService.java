/*
 * MyUserService 
 * This is my MyUserService class
 *
 * Date:12th May 2022
 * 
 *
 */
package com.abc.portal.service;

import java.util.List;

import com.abc.portal.dto.User;

public interface MyUserService {

	public String addUser(User us);
	public String updateUser(User us);
	public List<User> showAllUser();
	public User SearchUser(long id);
	//public void delete(long id);
	public User SearchUser(String userName );
	User transUser(String username);
	public int delete(long id);
	
}


