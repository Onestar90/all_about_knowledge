package kr.co.sist.aak.module.student.myPage.controller;

import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.sist.aak.domain.student.vo.ExamResultsForm;
import kr.co.sist.aak.domain.student.vo.MyExamVO;
import kr.co.sist.aak.module.student.myPage.service.MyExamService;

@Controller
public class MyExamController {
	
	@Autowired
	private MyExamService myExamService;
	
	@GetMapping("/mypage/exam_confirm.do")
	public String examConfirm(RedirectAttributes redirectAttributes, Principal principal, HttpSession session) {
	    String stdId = principal.getName();
	    String subCode = (String) session.getAttribute("sub_code");

	    boolean examTaken = myExamService.isExamTaken(stdId, subCode);
	    if (examTaken) {
	        redirectAttributes.addFlashAttribute("errorMessage", "�̹� ������ ������ �����Դϴ�.");
	        return "redirect:/mypage/my_lecture_detail.do";
	    }

	    return "student/my_page/exam_confirm";
	}
	
	@GetMapping("/mypage/exam.do")
	public String exam(Model model){
		List<MyExamVO> examList = myExamService.getExam();
		model.addAttribute("examList",examList);
		return "student/my_page/exam";
	}
	
	@PostMapping("/mypage/examSubmit.do")
	public String submitExam(@ModelAttribute ExamResultsForm examResultsForm, Principal principal, Model model, HttpSession session) {
	    List<MyExamVO> examResults = examResultsForm.getExamResults();

	    if (examResults != null && !examResults.isEmpty()) {
	    	myExamService.submitExamResult(examResults, principal);
            String stdId = principal.getName();
            String subCode = (String) session.getAttribute("sub_code");
            int totalScore = myExamService.getTotalScore(stdId, subCode);
            model.addAttribute("totalScore", totalScore);
            model.addAttribute("message", "���� ����� ���������� ����Ǿ����ϴ�.");
	    } else {
	        model.addAttribute("message", "����� ���� ����� �����ϴ�.");
	    }
	    return "student/my_page/exam_result";
	}
}
