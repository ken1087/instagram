package com.cos.costagram.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.cos.costagram.model.Follow;
import com.cos.costagram.model.Image;
import com.cos.costagram.model.Likes;
import com.cos.costagram.model.User;
import com.cos.costagram.repository.FollowRepository;
import com.cos.costagram.repository.ImageRepository;
import com.cos.costagram.repository.LikesRepository;
import com.cos.costagram.repository.UserRepository;
import com.cos.costagram.service.CustomUserDetails;

@Controller
public class UserController {
	
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	
	@Autowired
	private FollowRepository followRepository;
	
	@Autowired
	private LikesRepository likesRepository;
	
	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private ImageRepository imageRepository;
	
	@GetMapping("/")
	public String home() {
		return "/auth/join";
	}
	
	@GetMapping("/auth/login")
	public String authLogin() {
		return "/auth/login";
	}
	
	@GetMapping("/auth/join")
	public String authJoin() {
		return "/auth/join";
	}
	
	@GetMapping("/explore")
	public String explore() {
		return "/user/explore";
	}
	@GetMapping("/user/{id}")
	public String userDetail(@PathVariable int id, @AuthenticationPrincipal CustomUserDetails userDetail, Model model) {
		//유저 디테일 정보(세션)
		Optional<User> userO = userRepository.findById(userDetail.getUser().getId());
		//id의 유저 정보
		User user = userO.get();
		Optional<User> imageUserO = userRepository.findById(id);
		User imageUser = imageUserO.get();
		//이미지 리스트 + 이미지 카운트 + 좋아요 카운트
		//- imageList, imageCount
		List<Image> imageList = imageRepository.findByUserIdOrderByCreateDateDesc(id);
		int imageCount = imageList.size();
		for(Image i : imageList) {
			List<Likes> likeList = likesRepository.findByImageId(i.getId());
			i.setLikeCount(likeList.size());
		}
		//팔로우 카운트  - followCount
		List<Follow> followList = followRepository.findByFromUserId(id);
		int followCount = followList.size();
		//팔로워 카운트 - followerCount
		List<Follow> followerList = followRepository.findByToUserId(id);
		int followerCount = followList.size();
		
		model.addAttribute("user", user);
		model.addAttribute("imageUser", imageUser);
		model.addAttribute("imageCount", imageCount);
		model.addAttribute("imageList", imageList);
		model.addAttribute("followCount", followCount);
		model.addAttribute("followerCount", followerCount);
		model.addAttribute("followerCount", followerCount);
		

		return "/user/user";
	}
	
	@PostMapping("/auth/create")
	public String create(User user) {
		String rawPassword = user.getPassword();
		String encPassword = passwordEncoder.encode(rawPassword);
		user.setPassword(encPassword);
		userRepository.save(user);
		return "/auth/login";
	}
}
