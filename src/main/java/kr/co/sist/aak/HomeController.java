package kr.co.sist.aak;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {
	
	@GetMapping("/index.do")
	public String main(){
		return "student/home";
	}
	
	@GetMapping("/admin_index.do")
	public String adminMain() {
		return "/admin/login";
	}
	
	@GetMapping("/instructor_index.do")
	public String instructorMain() {
		return "instructor/login";
	}
}
