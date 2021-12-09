package com.itwill.yoridogam.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.itwill.yoridogam.controller.interceptor.LoginCheck;
import com.itwill.yoridogam.member.Member;
import com.itwill.yoridogam.product.Product;
import com.itwill.yoridogam.product.ProductService;
import com.itwill.yoridogam.teacher.Teacher;
import com.itwill.yoridogam.teacher.TeacherService;

/*
 <<teacher관련 페이지>>
/total_login_form
/teacher_login_action
/teacher_write_form
/teacher_write_action
/teacher_id_dupllicate_form
/teacher_logout_action
/teacher_detail 
/teacher_modify_form
/teacher_modify_action
/teacher_remove_action
 */
@Controller
public class TeacherController {
	
	@Autowired
	private TeacherService teacherService;
	
	@Autowired
	private ProductService productSerivce;
	
	/*
	 * 로그인 폼
	 */
	
	@RequestMapping(value = "/teacher_login_form")
	public String teacher_login_form() {
		return "teacher_login_form" ;
	}
	/*
	 * 로그인 액션
	 * 1) get으로 받을시 home으로 redirect
	 * 2) post방식일시 login 실행
	 */
	
	@GetMapping(value = "/teacher_login_action")
	public String teacher_login_action_get() {
		return "redirect:home";
	}
	
	@PostMapping(value = "/teacher_login_action")
	public String teacher_login_action_post(@ModelAttribute Teacher teacher,Model model,HttpSession session) throws Exception{
		String forwardPath="";
		int result = teacherService.login(teacher.getT_id(), teacher.getT_pass());
		
		Teacher loginTeacher=teacherService.findMember(teacher.getT_id()); // 이름뽑기용
		
		if (result==0) {
			//아이디 불일치
			model.addAttribute("msg1", teacher.getT_id()+" 은 존재하지 않는 아이디입니다.");
			model.addAttribute("nteacher", teacher);
			forwardPath="teacher_login_form";
		}else if(result==1) {
			//비밀번호 불일치
			model.addAttribute("msg2", "패스워드가 일치하지 않습니다.");
			model.addAttribute("nteacher", teacher);
			forwardPath="teacher_login_form";
		}else if(result==2) {
			session.setAttribute("sTeacherId", teacher.getT_id());
			session.setAttribute("sTeacherId_name", loginTeacher.getT_name());
			forwardPath="redirect:home";
		}
		return forwardPath ;
	}
	/*
	 * 회원가입
	 */
	@RequestMapping(value = "/teacher_write_form")
	public String teacher_write_form() {
		return "teacher_write_form";
	}
	
	@GetMapping(value = "/teacher_write_action")
	public String teacher_write_action_get() {
		return "redirect:teacher_write_form";
	}
	
	@PostMapping(value = "/teacher_write_action")
	public String teacher_write_action_post(@ModelAttribute Teacher teacher,Model model) throws Exception{
		String forwardPath="";
		teacher.setT_photo("img/teacher-img/"+teacher.getT_photo());
		int result = teacherService.create(teacher);
		if (result == 1) {
			forwardPath = "redirect:teacher_login_form";
		}else {
			model.addAttribute("nteacher", teacher);
			model.addAttribute("msg", teacher.getT_id()+ "는 존재하는 아이디입니다.");
			forwardPath="teacher_write_form";
		}
		return forwardPath;
	}
	/*
	 * 중복검사
	 */
	@RequestMapping(value ="/teacher_duplicate_form")
	public String teacher_duplicate_form() {
		return "teacher_duplicate_form";
	}
	
	@PostMapping(value ="/teacher_duplicate_action")
	public String teacher_duplicate_action_post(Model model,HttpServletRequest request) throws Exception{
		String forwardPath="";
		String sTeacherId = request.getParameter("sTeacherId");
		boolean isDuplicate = teacherService.isDuplcateTeacherId(sTeacherId);
		if (isDuplicate) {
			model.addAttribute("sTeacherId", sTeacherId);
			model.addAttribute("msg", sTeacherId+"는 사용불가합니다.");
			model.addAttribute("isduplicate", isDuplicate);
			forwardPath="teacher_duplicate_form";
		}else {
			model.addAttribute("sTeacherId", sTeacherId);
			model.addAttribute("msg", sTeacherId+"는 사용가능합니다.");
			model.addAttribute("isduplicate", isDuplicate);
			forwardPath="teacher_duplicate_form";
		}
		return forwardPath;
	}
	/*
	 * 로그아웃
	 */
	
	@LoginCheck
	@RequestMapping(value = "/teacher_logout_action")
	public String teacher_logout_action(HttpSession session) {
		session.invalidate();
		return "redirect:home";
	}
	/*
	 * 회원정보수정
	 */
	@LoginCheck
	@PostMapping(value = "/teacher_modify_form")
	public String teacher_modify_form(HttpSession session, Model model) throws Exception{
		String loginUserId = (String)session.getAttribute("sTeacherId");
		Teacher loginUser = teacherService.findMember(loginUserId);
		model.addAttribute("loginUser", loginUser);
		return "teacher_modify_form";
	}
	
	@LoginCheck
	@PostMapping(value = "/teacher_modify_action")
	public String teacher_modify_action_post(@ModelAttribute Teacher teacher,HttpSession session) throws Exception {
		String forwardPath="";
		String loginUserId=(String)session.getAttribute("sTeacherId");
		teacher.setT_id(loginUserId);
		forwardPath="redirect:teacher_detail";
		return forwardPath;
	}
	
	@LoginCheck
	@GetMapping(value = "/teacher_modify_action")
	public String teacher_modify_action_get() {
		return "redirect:teacher_detail";
	}
	
	/*
	 * 회원상세
	 */
	@LoginCheck
	@RequestMapping(value = "/teacher_detail")
	public String teacher_detail(HttpSession session,HttpServletRequest request ) throws Exception {
		String loginUserId =(String)session.getAttribute("sTeacherId");
		//내강의 리시트 보여주기
		
		// 회원정보
		Teacher loginUser = teacherService.findMember(loginUserId);
		request.setAttribute("loginUser", loginUser);
		return"teacher_detail";
	}
	
	/*
	 * 회원탈퇴
	 */
	
	@PostMapping(value = "teacher_remove_action")
	public String teacher_remove_action_post(HttpServletRequest request) throws Exception{
		String forwardPath="";
		String loginUser=(String)request.getSession().getAttribute("sTeacherId");
		teacherService.remove(loginUser);
		forwardPath="redirect:teacher_logout_action";
		return forwardPath;
	}
	@LoginCheck
	@GetMapping(value = "teacher_remove_action")
	public String teacher_remove_action_get() {
		return "redirect:home";
	}
}
