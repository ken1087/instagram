package com.cos.costagram.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.cos.costagram.model.Image;

public interface ImageRepository extends JpaRepository<Image, Integer>{
	
	public List<Image> findByUserIdOrderByCreateDateDesc(int userId);
}
