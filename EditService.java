package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.Entitydemo.User;
import com.example.demo.repos.repo;

@Service
public class EditService {
	@Autowired
	private repo repository;
	
	public List<User> listAll(){return repository.findAll();}
	public User get(Long id) 
	{
		return repository.findById(id).get();
	}
	
}
