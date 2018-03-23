package com.creathon.creathon;

import java.util.Properties;

import javax.persistence.EntityManagerFactory;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.JavaMailSenderImpl;

import com.creathon.bean.TeamMember;
import com.creathon.daoImpl.TeamMemberDaoImpl;
import com.creathon.service.TeamMemberService;

@SpringBootApplication
@ComponentScan("com.creathon")
@EntityScan( basePackages = {"com.creathon"} )
public class TrainingApplication {

	
//	private static TeamMemberDaoImpl teamMemberService = new TeamMemberDaoImpl();
	
	public static void main(String[] args) {
		SpringApplication.run(TrainingApplication.class, args);
		System.out.println("HEllo World");
		// new TrainingApplication().sendSimpleMessage("shubham@istudentlabs.com","tes agfyugafugafgagfjgashkfg kasfjhstmail","text",null);
		
		
		
	}
	
	@Autowired
	private EntityManagerFactory entityManagerFactory;

	@Bean
	public SessionFactory getSessionFactory() {
	    if (entityManagerFactory.unwrap(SessionFactory.class) == null) {
	        throw new NullPointerException("factory is not a hibernate factory");
	    }
	    return entityManagerFactory.unwrap(SessionFactory.class);
	}
	
	@Bean
	public JavaMailSender getJavaMailSender() {
	    JavaMailSenderImpl mailSender = new JavaMailSenderImpl();
	    mailSender.setHost("mail.istudentlabs.com");
	    mailSender.setPort(587);
	    mailSender.setUsername("shubham@istudentlabs.com");
	    mailSender.setPassword("Shubham@1");
	    Properties props = mailSender.getJavaMailProperties();
	    props.put("mail.transport.protocol", "smtp");
	    props.put("mail.smtp.auth", "true");
	    props.put("mail.smtp.starttls.enable", "true");
	    props.put("mail.debug", "true");
	    
	    
	   
	    return mailSender;
	}
	
    public void sendSimpleMessage( String to, String subject, String text, String from) {
		
    	if(from==null)
    	{
    		from="no-reply@creathon.com";
    	}
		JavaMailSender emailSender =getJavaMailSender();
		     
		        SimpleMailMessage message = new SimpleMailMessage(); 
		        message.setTo(to); 
		        message.setFrom(from); 
		       
		        message.setSubject(subject); 
		        message.setText(text);
		        emailSender.send(message);
		        
		    }
	
}
