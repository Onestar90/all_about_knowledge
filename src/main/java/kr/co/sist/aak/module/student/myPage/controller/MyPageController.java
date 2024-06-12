package kr.co.sist.aak.module.student.myPage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MyPageController {
// 학생 마이페이지 강의 관련 controller
	@GetMapping("/mypage_home.do")
	public String myPageHome(){
		return "student/my_page/mypage_home";
	}
	@GetMapping("/login.do")
	public String login(){
		return "student/login_join";
	}
}