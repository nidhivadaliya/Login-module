package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.Entitydemo.User;
import com.example.demo.repos.repo;
import com.example.demo.service.EditService;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;



@Controller
public class RegistrationController {
	
	@Autowired
	private repo repository;
	
	@Autowired
	private EditService editservice;
	
	@Autowired
	private EntityManagerFactory emf;

	@RequestMapping("/registration")
	public String home(){
		
		return "Index";
	}
	
	
	@RequestMapping("/edit/{id}")
	
	  public ModelAndView editUser(@PathVariable("id") Long id) 
	  { 
		ModelAndView mc=new ModelAndView("edit_user");
	    User u=editservice.get(id);
	    mc.addObject("user",u); 
	    return mc; 
	   }
	 
	
	
	//delete
	@GetMapping("/delete/{id}")
	public String deleteEmployee(@PathVariable("id") Long id) 
	{
	   	repository.deleteById(id);
	   	return "redirect:/show";
	   
	}
	
	//citydropdown
	@GetMapping("/citydrop")
	@ResponseBody
	public List<Object[]> citydrop(@RequestParam(name="stateid",required = false) String stateid){
		List<Object[]> citydata=null;
		EntityManager manager=null;
		try {
			manager=emf.createEntityManager();
			//citydata=(List<City>)cityrepo1.findAllById();	
			citydata=manager.createNativeQuery("select cityid,name from citymaster where stateid=:stateid").setParameter("stateid", stateid).getResultList();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			if(manager!=null) {
				manager.clear();
				manager.close();
			}
		}
		return citydata;
	}
	
	//statedropdown
	@GetMapping("/statedrop")
	@ResponseBody
	public List<Object[]> statedrop(){
		List<Object[]> citydata=null;
		EntityManager manager=null;
		try {
			manager=emf.createEntityManager();
			
			citydata=manager.createNativeQuery("select stateid,name from statemaster").getResultList();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			if(manager!=null) {
				manager.clear();
				manager.close();
			}
		}
		return citydata;
	}
	
	
	// registeration deatail save..
	@PostMapping("/save")
	public ModelAndView save(@ModelAttribute User user ,@RequestParam String state,@RequestParam String city) {
		  String ALPHA_NUMERIC_STRING ="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%&?{}*";
		  StringBuilder builder = new StringBuilder();
		  int count = 8;
		  while (count-- != 0)
		  { 
			  int character = (int) (Math.random() * ALPHA_NUMERIC_STRING.length());
			  builder.append(ALPHA_NUMERIC_STRING.charAt(character)); 
		  } 
		  user.setPassword(builder.toString());
		 
		  user.setStateid(state);
		  user.setCitiid(city);
		  
		  repository.save(user);
		  System.out.println(user);
		  return new ModelAndView("redirect:/");
		  
	}
		
	
}
