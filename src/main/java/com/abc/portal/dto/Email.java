package com.abc.portal.dto;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.NotBlank;

@Entity
public class Email {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int emailId;	
	
	@NotBlank(message="Field cannot be left Blank")
	private String reciever_email;
	
	@NotBlank(message="Field cannot be left Blank")
	private String subject;
	
	@NotBlank(message="Field cannot be left Blank")
	private String body;

	public Email() {
		
	}

	public int getEmailId() {
		return emailId;
	}

	public void setEmailId(int emailId) {
		this.emailId = emailId;
	}

	public String getReciever_email() {
		return reciever_email;
	}

	public void setReciever_email(String reciever_email) {
		this.reciever_email = reciever_email;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getBody() {
		return body;
	}

	public void setBody(String body) {
		this.body = body;
	}

	public Email(int emailId, @NotBlank(message = "Field cannot be left Blank") String reciever_email,
			@NotBlank(message = "Field cannot be left Blank") String subject,
			@NotBlank(message = "Field cannot be left Blank") String body) {
		super();
		this.emailId = emailId;
		this.reciever_email = reciever_email;
		this.subject = subject;
		this.body = body;
	}

	@Override
	public String toString() {
		return "Email [emailId=" + emailId + ", reciever_email=" + reciever_email + ", subject=" + subject + ", body="
				+ body + "]";
	}
	

}
