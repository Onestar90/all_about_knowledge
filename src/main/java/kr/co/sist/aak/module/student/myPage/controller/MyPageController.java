package kr.co.sist.aak.module.student.myPage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * Desc : 마이페이지의 각 페이지를 연결하는 controller
 * @author 고한별
 * 작성일 : 2024.06.25
 */
@Controller
public class MyPageController {
	

	
	// 학생 마이페이지 --- 나의 강의 -- 재생
	@GetMapping("/mypage/play_lecture.do")
	public String playLecture(){
		return "student/my_page/play_lecture";
	}
	
	// 학생 마이페이지 --- 나의 문의
	@GetMapping("/mypage/my_question.do")
	public String question(){
		return "student/my_page/my_question";
	}
	
}
