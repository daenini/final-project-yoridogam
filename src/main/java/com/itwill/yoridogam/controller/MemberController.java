package com.itwill.yoridogam.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
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
import org.springframework.web.bind.annotation.ResponseBody;

import com.itwill.yoridogam.controller.interceptor.LoginCheck;
import com.itwill.yoridogam.inquiry.Inquiry;
import com.itwill.yoridogam.inquiry.InquiryService;
import com.itwill.yoridogam.member.Member;
import com.itwill.yoridogam.member.MemberService;
import com.itwill.yoridogam.memberInterest.MemberInterest;
import com.itwill.yoridogam.product.Product;
import com.itwill.yoridogam.product.ProductService;
import com.itwill.yoridogam.review.Review;
import com.itwill.yoridogam.review.ReviewService;

/*
 <<Member관련 페이지>>
/member_login_form
/member_login_action
/member_write_form
/member_write_action
/member_id_dupllicate_form
/member_logout_action
/member_detail 
/member_modify_form
/member_modify_action
/member_remove_action
 */
@Controller
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
	@Autowired
	private ProductService productService;
	
	@Autowired
	private ReviewService reviewService;

	@Autowired
	private InquiryService inquiryService;
	
	/*
	 * 로그인 폼
	 */
	
	@RequestMapping(value = "/member_login_form")
	public String member_login_form() {
		return "member_login_form" ;
	}
	/*
	 * 로그인 액션
	 * 1) get으로 받을시 home으로 redirect
	 * 2) post방식일시 login 실행
	 */
	
	@GetMapping(value = "/member_login_action")
	public String member_login_action_get() {
		return "redirect:home";
	}
	
	@PostMapping(value = "/member_login_action")
	public String member_login_action_post(@ModelAttribute Member member,Model model,HttpSession session) throws Exception{
		String forwardPath="";
		int result = memberService.login(member.getM_id(), member.getM_pass());
		
		Member LoginMember=memberService.findMember(member.getM_id()); // name뽑기용
		
		if (result==0) {
			//아이디 불일치
			model.addAttribute("msg1", member.getM_id()+" 은 존재하지 않는 아이디입니다.");
			model.addAttribute("nmember", member);
			forwardPath="member_login_form";
		}else if(result==1) {
			//비밀번호 불일치
			model.addAttribute("msg2", "패스워드가 일치하지 않습니다.");
			model.addAttribute("nmember", member);
			forwardPath="member_login_form";
		}else if(result==2) {
			session.setAttribute("sUserId", member.getM_id());
			session.setAttribute("sUserId_name", LoginMember.getM_name());
			forwardPath="redirect:home";
		}
		return forwardPath ;
	}
	/*
	 * 회원가입
	 */
	@RequestMapping(value = "/member_write_form")
	public String member_write_form() {
		return "member_write_form";
	}
	
	@GetMapping(value = "/member_write_action")
	public String member_write_action_get() {
		return "redirect:member_write_form";
	}
	
	@PostMapping(value = "/member_write_action")
	public String member_write_action_post(@ModelAttribute Member member,@ModelAttribute MemberInterest memberInterest,Model model) throws Exception{
		String forwardPath="";
		int result1 = memberService.create(member);
		Member member1 = new Member(member.getM_id(), null, null, null, null, null, null);
		memberInterest.setMember(member1);
		
		String[] interestList = memberInterest.getMi_interest().split(",");
		for (int i = 0; i < interestList.length; i++) {
			int result2 = memberService.createInterest(new MemberInterest(0, interestList[i],member1));
			System.out.println(memberService.createInterest(new MemberInterest(0, interestList[i],member1)));
		}
		if (result1 == 1) {
			forwardPath = "redirect:member_login_form";
		}else {
			model.addAttribute("nmember", member);
			model.addAttribute("nmemberInterest",memberInterest );
			forwardPath="member_write_form";
		}
		return forwardPath;
	}
	/*
	 * 중복검사
	 */
	@RequestMapping(value ="/member_duplicate_form")
	public String member_duplicate_form() {
		return "member_duplicate_form";
	}

	@RequestMapping(value ="/member_duplicate_action")
	/*
	 * boolean isDuplicate=false;	
	String msg="";
	//request.setCharacterEncoding("UTF-8");
	String m_id = request.getParameter("sUserId");
	if(m_id==null|| m_id.equals("")){
		//최초윈도우를 띄울때
		m_id="";
		msg="";
		isDuplicate=true;
	}else{

		if(isDuplicate){
			msg="사용 불가능한 아이디입니다.";
		}else{
			msg="사용 가능한 아이디 입니다";
		}
	}
	 */
	public String member_duplicate_action(Model model,HttpServletRequest request) throws Exception{
		String forwardPath="";
		String sUserId = request.getParameter("sUserId");
		boolean isDuplicate = memberService.isDuplcateUserId(sUserId);
		if (isDuplicate) {
			model.addAttribute("sUserId", sUserId);
			model.addAttribute("msg", sUserId+"는 사용불가합니다.");
			model.addAttribute("isduplicate", isDuplicate);
			forwardPath="member_duplicate_form";
		}else {
			model.addAttribute("sUserId", sUserId);
			model.addAttribute("msg", sUserId+"는 사용가능합니다.");
			model.addAttribute("isduplicate", isDuplicate);
			forwardPath="member_duplicate_form";
		}
		return forwardPath;
	}
	/*
	 * 로그아웃
	 */
	
	@LoginCheck
	@RequestMapping(value = "/member_logout_action")
	public String member_logout_action(HttpSession session) {
		session.invalidate();
		return "redirect:home";
	}
	/*
	 * 회원정보수정
	 */
	@LoginCheck
	@PostMapping(value = "/member_modify_form")
	public String member_modify_form(HttpSession session, Model model) throws Exception{
		
		String loginUserId = (String)session.getAttribute("sUserId");
		Member loginUser = memberService.findMember(loginUserId);
		model.addAttribute("loginUser", loginUser);
		return "member_modify_form";
	}
	
	@LoginCheck
	@PostMapping(value = "/member_modify_action")
	public String member_modify_action_post(@ModelAttribute Member member,@ModelAttribute MemberInterest memberInterest,HttpSession session) throws Exception {
	String forwardPath="";

		String loginUserId=(String)session.getAttribute("sUserId");
		member.setM_id(loginUserId);
		
		memberService.update(member);
		
		Member member1 = new Member(member.getM_id(), null, null, null, null, null, null);
		memberInterest.setMember(member1);
		
		String[] interestList = memberInterest.getMi_interest().split(",");
		for (int i = 0; i < interestList.length; i++) {
			memberService.updateInterest(new MemberInterest(0, interestList[i],member1));
		}
		
		forwardPath="redirect:member_detail";
		return forwardPath;
	}
	
	@LoginCheck
	@GetMapping(value = "/member_modify_action")
	public String member_modify_action_get() {
		return "redirect:member_detail";
	}
	
	/*
	 * 회원상세
	 */
	@LoginCheck
	@RequestMapping(value = "/member_detail")
	public String member_detail(HttpSession session,HttpServletRequest request ) throws Exception {
		String loginUserId =(String)session.getAttribute("sUserId");
		// 회원정보
		Member loginUser = memberService.findMember(loginUserId);
		List<Product> productList =productService.selectAll();
		List<MemberInterest> interestList= memberService.getMemberInterestList(loginUserId);
		request.setAttribute("interestList", interestList);
		request.setAttribute("productList", productList);
		request.setAttribute("loginUser", loginUser);
		return"member_detail";
	}
	
	@RequestMapping(value ="/interest_list")
	public String interest_list(HttpSession session, HttpServletRequest request) throws Exception{
		String loginUserId =(String)session.getAttribute("sUserId");
		// 회원관심분야
		List<Product> productList =productService.selectAll();
		List<MemberInterest> interestList= memberService.getMemberInterestList(loginUserId);
		request.setAttribute("interestList", interestList);
		request.setAttribute("productList", productList);
		return "interest_list";
	}
	
	/*
	 * 회원탈퇴
	 */
	
	@PostMapping(value = "member_remove_action")
	public String member_remove_action_post(HttpServletRequest request) throws Exception{
		String forwardPath="";
		String loginUser=(String)request.getSession().getAttribute("sUserId");
		memberService.remove(loginUser);
		forwardPath="redirect:member_logout_action";
		return forwardPath;
	}
	@LoginCheck
	@GetMapping(value = "member_remove_action")
	public String member_remove_action_get() {
		return "redirect:home";
	}
	
	@LoginCheck
	@RequestMapping("member_board_list")
	public String board_list(HttpSession session, Model model) throws Exception{
		String sUserId=(String)session.getAttribute("sUserId");
		List<Review> rList=reviewService.reviewAllId(sUserId);
		for(int i=0; i<rList.size(); i++) {
			rList.get(i).setProduct(productService.selectByNo(rList.get(i).getProduct().getP_no()));
		}
		//inquiry
		List<Inquiry> iList=inquiryService.inquiryList();
		List<Inquiry> inquiryList=new ArrayList<Inquiry>();
		for(int i=0; i<iList.size(); i++) {
			if(iList.get(i).getMember().getM_id().equals(sUserId)) {
				inquiryList.add(iList.get(i));
			}
		}
		System.out.println(inquiryList);
		
		model.addAttribute("rList",rList);
		model.addAttribute("iList",inquiryList);
		return "member_board_list";
	}
	
	@RequestMapping("category_list")
	@ResponseBody
	public List category_list(HttpSession session, Model model, String mi_interest) throws Exception{
		List<Product> productList =productService.selectAll();
		List<Product> categoryList=new ArrayList<Product>();
		for(int i=0; i<productList.size(); i++) {
			if(productList.get(i).getP_category().equals(mi_interest)) {
				categoryList.add(productList.get(i));
			}else if(mi_interest.equals("all")) {
				categoryList.add(productList.get(i));
			}
		}
		return categoryList;
	}
	
	
	
	
	
	
}
