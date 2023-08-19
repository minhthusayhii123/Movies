package com.poly.service.impl;

import javax.servlet.ServletContext;

import com.poly.entity.User;
import com.poly.service.EmailService;
import com.poly.utils.SendEmailUtils;

public class EmailServiceImpl implements EmailService{
	private static final String EMAIL_WELCOME_SUBJECT = "Welcome to Online Entertaiment";
	private static final String EMAIL_FORGOT_PASSWORD = "Online Entertaiment - New Password";

	@Override
	public void sendEmail(ServletContext context, User recipient, String type) {
        String host = context.getInitParameter("host");
        String port = context.getInitParameter("port");
        String user = context.getInitParameter("user");
        System.out.println(user);
        String pass = context.getInitParameter("pass");
        System.out.println(pass);
        
        try {
			String content = null;
			String subject = null;
			
			switch (type) {
			case "welcome":
				subject = EMAIL_WELCOME_SUBJECT;
				content = "Dear " + recipient.getUsername() + " I have you have a good time!";
				break;
			case "forgot":
				subject = EMAIL_FORGOT_PASSWORD;
				content = "Dear " + recipient.getUsername() + ", your new password here: " + recipient.getPassword();
				break;
			default:
				subject = "Online Entertainment";
				content = "Maybe this email is wrong, don't care about it";
				break;
			}
			SendEmailUtils.sendEmail(host, port, user, pass, recipient.getEmail(), subject, content);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

}
