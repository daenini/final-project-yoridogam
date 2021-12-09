package com.itwill.yoridogam.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwill.yoridogam.controller.interceptor.LoginCheck;
import com.itwill.yoridogam.inquiry.Inquiry;
import com.itwill.yoridogam.inquiry.InquiryService;
import com.itwill.yoridogam.member.Member;
import com.itwill.yoridogam.notice.paging.PageDto;

@Controller
public class InquiryController {
	
	@Autowired
	private InquiryService inquiryService;
	
	/*
	 inquiry_list		문의글 전체 리스트
	 inquiry_detail		문의글 한 개 상세보기
	 ---------------------------------------------------------
	(회원만 가능) 
	 inquiry_write_form		문의글 작성 폼
	 inquiry_write_action	문의글 작성 액션

	 inquiry_update_form	문의글 수정 폼
	 inquiry_update_action	문의글 수정 액션	

	 inquiry_delete_action	문의글 삭제 액션

	-----------------------------------------------------------
	(관리자만 가능)
	 inquiryA_write_form	답변 작성 폼
	 inquiryA_write_action	답변 작성 액션

	 inquiryA_update_form	답변 수정 폼
	 inquiryA_update_action	답변 수정 액션

	 inquiryA_delete_action	답변 삭제 액션
	 */
	
	
	/**** 문의게시판 리스트 ****/
	@RequestMapping("inquiry_list")
	public String inquiry_list(Model model, PageDto pageDto, 
								@RequestParam(defaultValue = "1")String nowPage, 
								@RequestParam(defaultValue = "6")String cntPerPage) {
		
		int total = inquiryService.getTotal();
		pageDto = new PageDto(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		model.addAttribute("paging", pageDto);
		//List<Inquiry> inquiryList = inquiryService.inquiryList();
		model.addAttribute("inquiry", inquiryService.getListWithPaging(pageDto));
		return "inquiry_list_form";
	}
	/*
	 * inquiry.setMember(new Member());
		inquiry.getMember().setM_id(m_id);
	 */
	
	/**** 문의게시판 한 개 상세보기 ****/
	@RequestMapping("inquiry_detail")
	@LoginCheck
	public String inquiry_detail(@RequestParam int ib_no, Model model) {
		inquiryService.updateInquiryViewCount(ib_no);
		Inquiry inquiryDetail = inquiryService.selectByNoInquiry(ib_no);
		model.addAttribute("inquiry", inquiryDetail);
		return "inquiry_detail";
		/*
		 inquiryService.updateInquiryViewCount(ib_no);
		Inquiry inquiryDetail = inquiryService.selectByNoInquiry(ib_no);
		inquiryDetail.getMember().getM_id();
		model.addAttribute("inquiry", inquiryDetail);
		return "inquiry_detail";
		 */
	}
	
	/***************************************************************************/
	
	/**** 문의게시판 글 작성 폼(회원) ****/
	@RequestMapping("inquiry_write")
	@LoginCheck
	public String inquiry_write_form() {
		return "inquiry_write_form_Q";
	}
	
	/**** 문의게시판 글 작성 액션(회원)(GET) ****/
	@GetMapping("inquiry_write_action")
	@LoginCheck
	public String inquiry_write_action_get() {
		return "redirect:inquiry_write_form_Q";
	}
	
	/**** 문의게시판 글 작성 액션(회원)(POST) ****/
	@PostMapping("inquiry_write_action")
	@LoginCheck
	public String inquiry_write_action_post(@ModelAttribute Inquiry inquiry,@RequestParam String m_id, Model model) {
		inquiry.setMember(new Member());
		inquiry.getMember().setM_id(m_id);
		int ib_no = inquiryService.insertInquiry(inquiry);
		
		model.addAttribute("inquiry", inquiryService.selectByNoInquiry(ib_no));
		return "redirect:inquiry_detail?ib_no="+ib_no;
	}

	/***************************************************************************/
	
	/**** 문의게시판 답글 작성 폼(관리자) ****/
	@RequestMapping("inquiryA_write")
	@LoginCheck
	public String inquiryA_write_form(@RequestParam int ib_no, Model model) {
		Inquiry inquiry = inquiryService.selectByNoInquiry(ib_no);
		model.addAttribute("inquiry", inquiry);
		return"inquiryA_write_form";
	}
	
	/**** 문의게시판 답글 작성 액션(관리자)(GET) ****/
	@GetMapping("inquiryA_write_action")
	@LoginCheck
	public String inquiryA_write_action_get() {
		return "redirect:inquiryA_write_form";
	}
	
	/**** 문의게시판 답글 작성 액션(관리자)(POST) ****/
	@PostMapping("inquiryA_write_action")
	@LoginCheck
	public String inquiryA_write_action_post(@ModelAttribute Inquiry inquiry, @RequestParam String m_id, Model model) {
		inquiry.setMember(new Member());
		inquiry.getMember().setM_id(m_id);
		int ib_no = inquiryService.insertInquiryA(inquiry);
		
		model.addAttribute("inquiry", inquiryService.selectByNoInquiry(ib_no));
		return "redirect:inquiry_detail?ib_no="+ib_no;
	}
	
	
	/***************************************************************************/
		
	/**** 문의게시판 글 삭제 액션 ****/
	@RequestMapping("inquiry_delete_action")
	@LoginCheck
	public String inquiry_delete_action(@RequestParam int ib_no) {
		inquiryService.deleteInquiry(ib_no);
		return "redirect:inquiry_list";
	}
	/***************************************************************************/
	
	/**** 문의게시판 글 수정 폼 ****/
	@LoginCheck
	@RequestMapping(value = "inquiry_update", params = "ib_no")
	public String inquiry_update_form(@RequestParam int ib_no, Model model) {
		Inquiry ibUpdate = inquiryService.selectByNoInquiry(ib_no);
		model.addAttribute("inquiry", ibUpdate);
		return"inquiry_update_form";
	}
	
	/**** 문의게시판 글 수정 액션(GET) ****/
	@GetMapping("inquiry_update_action")
	public String inquiry_update_action_get() {
		return"redirect:inquiry_update_form";
	}
	
	/**** 문의게시판 글 수정 액션(POST) ****/
	@LoginCheck
	@PostMapping("inquiry_update_action")
	public String inquiry_update_action_post(@ModelAttribute Inquiry inquiry, Model model) {
		int ib_no = inquiryService.updateInquiry(inquiry);
		model.addAttribute("inquiry", inquiryService.selectByNoInquiry(ib_no));
		return "redirect:inquiry_detail?ib_no="+ib_no;
	}
	
}
