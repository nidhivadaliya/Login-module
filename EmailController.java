package com.example.demo.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.example.demo.Entitydemo.User;

import com.example.demo.repos.repo;
import com.example.demo.service.EmailService;

@Controller
public class EmailController {
	@Autowired
	private EmailService emailservice;

	@Autowired
	private repo repository;
	
	@Autowired
	private JavaMailSender mailsender;

	@GetMapping("/approve/{id}")
    public ResponseEntity<String> approveUser(@PathVariable Long id) {
       Optional<User> optionalUser = repository.findById(id);
	
        if (optionalUser.isPresent()) 
        {
        
            User user = optionalUser.get();
            if (!user.isApproved())
            {
            
                // Update user approval status
                user.setApproved(true);
                repository.save(user);

                // Send login credentials to the user's email address
                emailservice.sendLoginCredentials(user.getEmail(), user.getFirstName(), user.getPassword());
               
                return ResponseEntity.ok("User approved and login credentials sent");
            } 
            else 
            {
            	   return ResponseEntity.badRequest().body("User already approved");
            }
        } 
        else 
        {
        	
            return ResponseEntity.notFound().build();
        }
    }

}
