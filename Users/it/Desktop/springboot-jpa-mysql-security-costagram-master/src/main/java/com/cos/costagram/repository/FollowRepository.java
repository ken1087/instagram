package com.cos.costagram.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.cos.costagram.model.Follow;

public interface FollowRepository extends JpaRepository<Follow, Integer>{
	
	//toUser를 뽑아야 함.
	public List<Follow> findByFromUserId(int fromUser);
	
	public List<Follow> findByToUserId(int toUser);
}
