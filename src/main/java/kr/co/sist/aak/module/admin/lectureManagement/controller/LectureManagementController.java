package kr.co.sist.aak.module.admin.lectureManagement.controller;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import kr.co.sist.aak.domain.admin.LectureManagementDomain;
import kr.co.sist.aak.module.admin.lectureManagement.service.LectureManagementService;
import kr.co.sist.aak.module.admin.memberManagement.service.MemberManagementService;


@Controller
public class LectureManagementController {
	
	@Autowired(required = false)
	private LectureManagementService lms;
	
	@GetMapping("manage_lecture.do")
	public String searchSubject(Model model) {
		List<LectureManagementDomain> list = lms.searchSubject();
		model.addAttribute("lectureList",list);
		
		return "/admin/manage_lecture";
	}
	
	
	
	@GetMapping("manage_lecture_details.do")
	public String searchDetaleLecture() {
		return "/admin/manage_lecture/manage_lecture_details";
	}
	
	
	
	
}
