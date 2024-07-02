/*
 * package kr.co.sist.aak.module.student.auth.controller;
 * 
 * import java.security.Principal;
 * 
 * import org.springframework.beans.factory.annotation.Autowired; import
 * org.springframework.stereotype.Controller; import
 * org.springframework.ui.Model; import
 * org.springframework.web.bind.annotation.GetMapping; import
 * org.springframework.web.bind.annotation.PostMapping; import
 * org.springframework.web.bind.annotation.RequestParam;
 * 
 * import kr.co.sist.aak.domain.student.vo.JoinVO; import
 * kr.co.sist.aak.module.student.auth.service.EditInformationService;
 * 
 * @Controller public class EditInformationController {
 * 
 * @Autowired private EditInformationService editInformationService;
 * 
 * // �븰�깮 留덉씠�럹�씠吏� --- 媛쒖씤�젙蹂댁닔�젙 -- �궗�슜�옄 寃�利� 紐⑤떖
 * 
 * @GetMapping("/mypage/edit_information.do") public String information(){
 * return "student/my_page/edit_information"; }
 * 
 * // �븰�깮 留덉씠�럹�씠吏� --- 媛쒖씤�젙蹂댁닔�젙 �럹�씠吏� �몴�떆
 * 
 * @GetMapping("/mypage/edit_profile.do") public String editProfile(Principal
 * principal, Model model) { String stdId = principal.getName(); JoinVO
 * studentInfo = editInformationService.getInformation(stdId);
 * model.addAttribute("studentInfo", studentInfo); return
 * "student/my_page/edit_profile"; }
 * 
 * // �븰�깮 留덉씠�럹�씠吏� --- 媛쒖씤�젙蹂댁닔�젙 泥섎━
 * 
 * @PostMapping("/mypage/update_profile.do") public String updateProfile(
 * Principal principal, @RequestParam String password,
 * 
 * @RequestParam String tel, @RequestParam String email, Model model) { String
 * stdId = principal.getName(); editInformationService.updateInformation(stdId,
 * password, tel, email); model.addAttribute("updateSuccess", true); return
 * editProfile(principal, model); } }
 */
