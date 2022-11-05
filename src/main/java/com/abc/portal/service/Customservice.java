/*
 * Customservice 
 * This is my Customservice class
 *
 * Date:12th May 2022
 * 
 *
 */
package com.abc.portal.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.abc.portal.dao.UserRepository;
import com.abc.portal.dto.User;
import com.abc.portal.security.ApplicationUserDetail;
@Service
public class Customservice implements UserDetailsService {
    @Autowired
	UserRepository userrepo;
    User user;
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		// TODO Auto-generated method stub
		user=userrepo.findByUserName(username);
		if(user==null) {
			System.out.println("User name is Invalid");
		}
		return new ApplicationUserDetail(user);
	}

}

