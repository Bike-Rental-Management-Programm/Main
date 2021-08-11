package com.bike.controller;


import java.util.List;

import javax.servlet.http.HttpSession;

import com.bike.dto.Community;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bike.service.CommunityService;
@Controller
public class CommunityController {
	@Autowired
	CommunityService communityService;


	@RequestMapping("/community/list")
	public String communityList(Model model, HttpSession session) {
<<<<<<< HEAD
//		List<Community> list = communityService.communityList();
//		model.addAttribute("list", list);
=======
		List<Community> list = communityService.communityList();
		model.addAttribute("list", list);
>>>>>>> master
		return "community/list";
	}
	@RequestMapping("/community/insertForm")
	public String insertForm(Model model, HttpSession session) {
		return "community/insertForm";
	}
	@RequestMapping("/community/insert")
	public String insert(Community dto, Model model) {
		int result = communityService.insertCommunity(dto);
		if (result == 1) {
			model.addAttribute("message", "작성 완료");
			return "community/detailForm";
		} else {
			model.addAttribute("message", "[등록 실패] 내용을 다시 확인하시기 바랍니다.");
			return "result";
		}
	}
	
}
