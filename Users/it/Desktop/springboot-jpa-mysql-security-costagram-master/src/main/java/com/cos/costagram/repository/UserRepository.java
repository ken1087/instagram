package com.cos.costagram.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.cos.costagram.model.User;

public interface UserRepository extends JpaRepository<User, Integer>{
	public User findByUsername(String username);
}
