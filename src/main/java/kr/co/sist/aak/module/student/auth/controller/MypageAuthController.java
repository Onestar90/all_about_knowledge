package kr.co.sist.aak.module.student.auth.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MypageAuthController {
	// 학생 마이페이지 --- 개인정보수정 -- 사용자 검증 모달
	@GetMapping("/mypage/edit_information.do")
	public String information(){
		return "student/my_page/edit_information";
	}
	
	// 학생 마이페이지 --- 개인정보수정
	@GetMapping("/mypage/edit_profile.do")
	public String edit_profile(){
		return "student/my_page/edit_profile";
	}
	
	// 학생 마이페이지 --- 탈퇴 전 사용자 검증
	@GetMapping("/mypage/withdrawal_confirm.do")
	public String withdrawalConfirm(){
		return "student/my_page/withdrawal_confirm";
	}
	
	// 학생 마이페이지 --- 탈퇴
	@GetMapping("/mypage/withdrawal.do")
	public String withdrawal(){
		return "student/my_page/withdrawal";
			}
	}
