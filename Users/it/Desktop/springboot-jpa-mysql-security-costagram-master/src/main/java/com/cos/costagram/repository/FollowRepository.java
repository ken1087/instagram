package com.cos.costagram.repository;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import com.cos.costagram.model.Follow;

public interface FollowRepository extends JpaRepository<Follow, Integer>{
	
	//toUser를 뽑아야 함.
	public List<Follow> findByFromUserId(int fromUser);
	
	public List<Follow> findByToUserId(int toUser);
	
	@Query(value = "select count(*) from follow where fromUser = ?1 and toUser = ?2", nativeQuery = true)
	public int findByFromUserIdAndToUserId(int fromUser, int toUser);
	
	//unfollow
	@Transactional
	public void deleteByFromUserIdAndToUserId(int fromUser, int toUser);
}
