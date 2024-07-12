package kr.co.sist.aak.module.instructor.studentList.controller;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.sist.aak.domain.instructor.StudentListDomain;
import kr.co.sist.aak.module.instructor.studentList.service.StudentListService;

@Controller
@RequestMapping("/instructor")
public class StudentListController {
	
	@Autowired(required = false)
	private StudentListService sls;
	

	@GetMapping("/studentList.do")
	public String searchList(@RequestParam(required = false) String searchType,
	                         @RequestParam(required = false) String searchKeyword,
	                         Model model) {
	    
	    List<StudentListDomain> list;
	    
	    try {
	        if ("아이디".equals(searchType) && searchKeyword != null && !searchKeyword.trim().isEmpty()) {
	            list = sls.searchById(searchKeyword); // 아이디로 검색
	        } else if ("과목".equals(searchType) && searchKeyword != null && !searchKeyword.trim().isEmpty()) {
	            list = sls.searchBySubCode(searchKeyword); // 과목 코드로 검색
	        } else if ("이름".equals(searchType) && searchKeyword != null && !searchKeyword.trim().isEmpty()) {
	            list = sls.searchByname(searchKeyword); // 이름으로 검색
	        } else {
	            list = sls.searchList(); // 기본적으로 전체 목록 조회
	        }
	        
	        model.addAttribute("listStudent", list);
	        model.addAttribute("searchType", searchType);
	        model.addAttribute("searchKeyword", searchKeyword);
	    } catch (PersistenceException e) {
	        model.addAttribute("error", "검색 중 오류가 발생했습니다: " + e.getMessage());
	        list = new ArrayList<>();
	    }
	    
	    // 디버깅을 위한 로그 추가
	    System.out.println("검색 유형: " + searchType);
	    System.out.println("검색어: " + searchKeyword);
	    System.out.println("결과 개수: " + (list != null ? list.size() : 0));
	    
	    return "/instructor/studentList";
	}


}
