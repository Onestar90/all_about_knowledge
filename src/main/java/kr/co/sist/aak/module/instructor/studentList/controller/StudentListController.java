package kr.co.sist.aak.module.instructor.studentList.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import kr.co.sist.aak.domain.instructor.StudentListDomain;
import kr.co.sist.aak.module.instructor.studentList.service.StudentListService;

@Controller
public class StudentListController {
	
	@Autowired(required = false)
	private StudentListService sls;
	
	@GetMapping("/studentList.do")
	
	public String searchList(Model model) {
		
		List<StudentListDomain> list=sls.searchList();
		model.addAttribute("listStudent",list);
		
		return "instructor/studentList";
	}

}
