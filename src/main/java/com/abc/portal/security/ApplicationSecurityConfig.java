/*
 * ApplicationSecurityConfig 
 * This is my ApplicationSecurityConfig class
 *
 * Date:12th May 2022
 * 
 *
 */
package com.abc.portal.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;
@Configuration
@EnableWebSecurity  //for creating the spring security filter chain 
public class ApplicationSecurityConfig extends WebSecurityConfigurerAdapter {
    private PasswordEncoder passwordencoder;
    @Autowired
    UserDetailsService userservice;
	@Autowired
	UserDetailsService userdetail;
    @Autowired
    ApplicationSecurityConfig (PasswordEncoder encoder){
    	this.passwordencoder=encoder;
    }
    @Autowired
    RolesHandler roles;
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		// TODO Auto-generated method stub
		http
		.authorizeRequests()
		.antMatchers("/","home","/register","registration","/myreg","/loginPage","loginPage",
				"/css/**","/fonts/**","/images/**","/js/**","/scss/**","/upload/**","/resources/**").permitAll()
		.mvcMatchers("/show","ShowDetails","/update/{searid}","/update/dataupdate",
				"/delete/{id}","/search","/sear","/viewjobs","viewJob").hasAnyAuthority("ADMIN","USER")
		
		.mvcMatchers("/admin","/admin/**","/show","ShowDetails",
				"/update/{searid}","/update/dataupdate","/delete/{id}","/search",
				"/sear","/sendmail","/admin/post","/admin/posted","/admin/**","/sendmail","sendemail").hasAnyAuthority("ADMIN")
		
		.mvcMatchers("/user","/show","/update/{searid}",
				"/update/dataupdate","/delete/{id}","/search","/sear","/user/**").hasAnyAuthority("USER")
		.anyRequest()
		.authenticated()
		.and().exceptionHandling().accessDeniedPage("/accessdenied")
		.and()
		.formLogin() 
		.successHandler(roles)
		.loginPage("/login").permitAll()
		.and()
		.logout().permitAll()
		.logoutUrl("/logout")
		.logoutRequestMatcher(new AntPathRequestMatcher("/logout"))
		.clearAuthentication(true)
		.invalidateHttpSession(true);
		
		
	}
	@Autowired
	AuthenticationProvider authProvider() {
		DaoAuthenticationProvider  dao=new DaoAuthenticationProvider();
		dao.setPasswordEncoder(passwordencoder);
		dao.setUserDetailsService(userservice);
		
		return dao;
	}
		
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
		
//		@Override
//		protected void configure(HttpSecurity http) throws Exception {
//			http.authorizeRequests().antMatchers("/").permitAll().antMatchers("/welcome").hasAnyRole("USER", "ADMIN")
//					.antMatchers("/getEmployees").hasAnyRole("USER", "ADMIN").antMatchers("/addNewEmployee")
//					.hasAnyRole("ADMIN").anyRequest().authenticated()
//					.and().formLogin().loginPage("/login").permitAll()
//					.and().logout().permitAll();
//
//			http.csrf().disable();
//		
		
		
		
		
		
		
		
		


	/*
	 * @Override
	 * 
	 * @Bean protected UserDetailsService userDetailsService() { // TODO
	 * Auto-generated method stub //username password UserDetails userone=
	 * User.builder().username("rahul").password(passwordencoder.encode("123456")).
	 * roles("ADMIN").build(); UserDetails
	 * usertwo=User.builder().username("vikash").password(passwordencoder.encode(
	 * "123456")).roles("USER").build(); return new
	 * InMemoryUserDetailsManager(userone,usertwo); }
	 */
}
