package com.ch.teampro1.service;

import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import com.ch.teampro1.model.Email;

@Service
public class EmailSender {
	@Autowired
	private JavaMailSender mailSender;
	
	public void SendEmail(Email email){
		MimeMessage msg = mailSender.createMimeMessage();
		try {
			msg.setSubject(email.getSubjcect());
			msg.setText(email.getContent());
			msg.setRecipients(MimeMessage.RecipientType.TO, InternetAddress.parse(email.getReceiver()));
			
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		mailSender.send(msg);
		
	}
}
