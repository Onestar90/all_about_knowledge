package kr.co.sist.aak.module.student.myPage.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import kr.co.sist.aak.domain.student.vo.MyExamVO;
import kr.co.sist.aak.module.student.myPage.service.MyExamService;

@Controller
public class MyExamController {
	
	@Autowired
	private MyExamService myExamService;
	
	// 학생 마이페이지 --- 나의 강의 -- 시험 -- 확인
	@GetMapping("/mypage/exam_confirm.do")
	public String examConfirm(){
		return "student/my_page/exam_confirm";
	}
	
	// 학생 마이페이지 --- 나의 강의 -- 시험 -- 응시
	@GetMapping("/mypage/exam.do")
	public String exam(Model model){
		List<MyExamVO> examList = myExamService.getExam();
		model.addAttribute("examList",examList);
		return "student/my_page/exam";
	}
	
	// 시험 제출...
	// 과목코드 시험문제번호 일치하는 곳의 정답이 라디오버튼이랑 같아야한다
	// 같으면 스코어++ 인데 시험 몇문제냐...5개라네요
	// 자동채점해서 성적 모달
	// 완료된 강의에서는 그럼 성적이 보야모;ㅐ롲ㅁ;ㅕㅑㄷ뢔;모런우리ㅏㅋ시발
	// 강의 상세페이지에서 보여준다
	
	public int examSubmit() {
		int result = 0;
		return result;
	}
}
