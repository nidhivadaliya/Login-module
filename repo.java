package com.example.demo.repos;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.example.demo.Entitydemo.User;


import jakarta.persistence.EntityManager;


@Repository
public interface repo extends JpaRepository<User, Long>{
	Optional<User> findById(Long id);
//	List<User> findAll();
	
	@Query(value = "select * from user u where u.approved=1",nativeQuery = true)
	public List<User> approve();
	
	@Query(value = "select * from user u where u.approved='"+false+"'",nativeQuery = true)
	public List<User> disapprove();

}
