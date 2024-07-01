package kr.co.sist.aak.module.admin.dashboard.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import kr.co.sist.aak.module.admin.dashboard.service.DashBoardService;


@Controller
public class DashBoardController {
	
	//���ηα�����Ʈ�ѷ����ٰ� ����־��
	
	
	@Autowired(required = false)
	private DashBoardService dbs;

	@GetMapping("/adminindex.do")
	public String searchDataCount(Model model) {
		List<Integer> list = dbs.searchDataCount();
		model.addAttribute("list",list);
		System.out.println(list);

		return "/admin/index.do";
	}
	

	

}
