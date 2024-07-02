package kr.co.sist.aak.module.admin.lectureManagement.controller;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import kr.co.sist.aak.domain.admin.LectureManagementDomain;
import kr.co.sist.aak.domain.admin.SubjectManagementDomain;
import kr.co.sist.aak.domain.admin.vo.SubjectManagementVO;
import kr.co.sist.aak.module.admin.lectureManagement.service.LectureManagementService;



@Controller
public class LectureManagementController {
	
	@Autowired(required = false)
	private LectureManagementService lms;
	
	@GetMapping("manage_lecture.do")
	public String searchSubject(Model model) {
		List<SubjectManagementDomain> list = lms.searchSubject();
		model.addAttribute("list",list);
		
		return "/admin/manage_lecture";
	}
	
	
	
	@GetMapping("manage_lecture_details.do")
	public String searchDetaleLecture( SubjectManagementDomain smDomain, Model model, String sub_code) {
		List<LectureManagementDomain> lecList = lms.searchLecture(sub_code);
		smDomain = lms.searchDetaleSubject(sub_code);
		model.addAttribute("smDomain",smDomain);
		model.addAttribute("lecList",lecList);
		
		
		return "/admin/manage_lecture/manage_lecture_details";
	}
	
	@GetMapping("manage_lecture_modyify.do")
	public String modyifySubject(SubjectManagementVO smVO,Model model) {
		
		int cnt=0;	

		cnt=lms.modyifyMember(smVO);
		model.addAttribute("cnt",cnt);
		model.addAttribute("sub_code",smVO.getSub_code());
		
		return "/admin/manage_lecture/manage_member_details";
	}
	
	
}
