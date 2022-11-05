/*
 * RolesHandler 
 * This is my RolesHandler class
 *
 * Date:12th May 2022
 * 
 *
 */
package com.abc.portal.security;

import java.io.IOException;
import java.util.Collection;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.web.DefaultRedirectStrategy;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

@Component
public class RolesHandler implements AuthenticationSuccessHandler {

	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication authentication) throws IOException, ServletException {
	
		
		Collection<? extends GrantedAuthority> auth=authentication.getAuthorities();
		String myurl=null;
		for(GrantedAuthority my:auth) {               // beginning of "for" block
			System.out.println("roles is "+my);
			if(my.getAuthority().equals("ADMIN")) {     // beginning of "if" block
				myurl="/admin";
				//myurl="/show";
				break;
			}else if(my.getAuthority().equals("USER")) {     // beginning of "else-if" block
				myurl="/user";
				break;
			}
		}
		System.out.println(myurl);
		new DefaultRedirectStrategy()
		.sendRedirect(request, response, myurl);
		
	}

}
