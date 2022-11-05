package com.abc.portal.service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import com.abc.portal.dao.EmailRepository;
import com.abc.portal.dto.Email;
@Service
public class EmailService {
	
	@Autowired
	private JavaMailSender mailSender;
	
	@Autowired
	private EmailRepository emailrepo;
	
	public String sendEmail(Email email) {
		try {
			SimpleMailMessage msg = new SimpleMailMessage();
			
			List<String> emailss = new ArrayList<String>();
			
			String[] nemail = email.getReciever_email().split(",");
			
			emailss = Arrays.asList(nemail);
		
		for (String emailz_name : emailss) {
			System.out.println("email id is " + emailz_name );
			
			msg.setFrom("springboot950@gmail.com");
			msg.setTo(emailz_name);
			
			System.out.print(emailz_name);
			
			msg.setText(email.getBody());
			msg.setSubject(email.getSubject());
			
			mailSender.send(msg);
		}
		return "Email sent successfully ";	
	 }catch (Exception e) {
		e.printStackTrace();
	 }
		return null;
		}
	public void emailS(Email email) {
		emailrepo.save(email);
	}
}
