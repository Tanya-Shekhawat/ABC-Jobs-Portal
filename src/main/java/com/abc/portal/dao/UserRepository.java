/*
 * UserRepository
 * This is my UserRepository interface
 *
 * Date:12th May 2022
 * 
 */
package com.abc.portal.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.abc.portal.dto.User;


public interface UserRepository extends JpaRepository<User, Long> {

	User findByUserName(String name);
	
	//search
	//public List<User> findByUserNameContaining(String userName);
}
