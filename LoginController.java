package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.example.demo.Entitydemo.User;

import com.example.demo.repos.repo;
import com.example.demo.service.EditService;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.NoResultException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class LoginController {
	@Autowired
	private repo repository;
	
	@Autowired
	EditService editservice;
	
	@Autowired 
	EntityManagerFactory emf;
	
	
		//login
		@GetMapping(value = "/")
		public String add() {
	
			return "login";
		}
		
	
		@PostMapping("/loginsave")
		public String loginsave(HttpSession session,HttpServletRequest req)
		{
			EntityManager manager=null;
			User user=null;
			try {
				
				manager=emf.createEntityManager();
				
				String email=req.getParameter("email");
				String pass=req.getParameter("password");
				
				req.getSession();
		        session.setAttribute("unm", email);
		     
		        user=(User)manager.createQuery("select u from User u where u.Email=:email and u.Password=:pass").setParameter("email", email).setParameter("pass", pass).getSingleResult();
		        
		        System.err.println(user);
		        
		        Object[] data=(Object[]) manager.createNativeQuery("select * from user where email=:email and password=:pass").setParameter("email", email).setParameter("pass", pass).getSingleResult();
		        System.err.println("KJHYGTRF"+data);
			        for(Object obj:data) {
			        	System.err.println(obj);
			        }
			       // System.out.println(data[1]);
			       if(data[1].equals(null))
			       {
			    	   return "redirect:/welcome";
			    	        
			       }
			       else
			       {
			    	   
			    	   if(data[7].equals("admin"))
			    	   {
			    		   return "redirect:/admin";
			    	   }
			    	   else
			    	   {
			    		   return "redirect:/welcome";
			    	   }
			       }
			       
	
			}catch (NoResultException nre) {
				// TODO: handle exception
				 return "redirect:/";
			}
			catch (Exception e) {
				// TODO: handle exception
				 e.printStackTrace();
				 return "redirect:/";
				
			}finally {
				if(manager!=null) {
					manager.clear();
					manager.close();
				}
			}
			//return null;
		}
	
	
	
	
		// user page
		@GetMapping("/welcome")
		public String welcome(HttpSession session,Model model) {
			 String sunm = (String) session.getAttribute("unm");
			 if (sunm == null) 
			 {
				 System.out.println("Please login first...");
			     return "login"; 
			 }
			 else
			 {
				 model.addAttribute("unm",sunm);
				 return "welcome";
			 }
		}
	
		//adminpage
		@GetMapping(value = "/admin")
		public String admin(HttpSession session,Model model) 
		{
			 String sunm = (String) session.getAttribute("unm"); if (sunm == null) 
			 {
				 System.out.println("Please login first...");
			     return "login"; 
			 }
			 else
			 {
				 model.addAttribute("unm",sunm);
				return "admin";
			}
		}
		
	
		//all user detail..
		@RequestMapping("/show")
		public String showdata(HttpSession session,Model model ) {
			
			String sunm = (String) session.getAttribute("unm");
			if (sunm == null) {
				System.out.println("Please login first...");
				
				return "redirect:/";
			} else 
			{
				List<User> listuser=repository.findAll();
				model.addAttribute("user",listuser);
				return "view";
			}

		}
	
	
		//disapprove user
		@RequestMapping("/disapprove")
		public String disapprove(HttpSession session,Model model) 
		{
			String sunm = (String) session.getAttribute("unm");
			if (sunm == null) {
				System.out.println("Please login first...");
				
				return "redirect:/";
			} else
			{
				List<User> listuser=repository.disapprove();
				model.addAttribute("user",listuser);
				return "view";
			}
			
		}

	
		  @RequestMapping("/approve")
		  public String approve(HttpSession session,Model model) 
		  { 
			  String sunm = (String) session.getAttribute("unm");
				if (sunm == null) {
					System.out.println("Please login first...");
					
					return "redirect:/";
				} else 
				{
				  List<User> listuser=repository.approve();
				  model.addAttribute("user",listuser);
				  return "view";
				}
		 
		 }
	
	
		//logout
		@GetMapping(value = "/logout")
		public String logout(HttpSession session) {
			 session.invalidate();
		       
			return "login";
		}
		
}



