package com.itwill.yoridogam.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.itwill.yoridogam.controller.interceptor.LoginCheck;
import com.itwill.yoridogam.member.Member;
import com.itwill.yoridogam.product.Product;
import com.itwill.yoridogam.product.ProductService;
import com.itwill.yoridogam.review.Review;
import com.itwill.yoridogam.review.ReviewService;

@Controller
public class ReviewController {

	@Autowired
	private ReviewService reviewService;
	
	@Autowired
	private ProductService productService;
	
	
	@LoginCheck
	@RequestMapping("review_create_action")
	@ResponseBody
	public void createReview(HttpSession session, int p_no, int r_grade, String r_detail)throws Exception {
		Product product=new Product();
		Member member=new Member();
		product.setP_no(p_no);
		member.setM_id((String)session.getAttribute("sUserId"));
		Review review=new Review(0, "", r_detail, r_grade, "", "", member, product);
		reviewService.create(review);
	}
	
	@RequestMapping("review_modify")
	public String modifyReview(HttpSession session) {
		return "home";	
	}
	
	@RequestMapping("review_delete_action")
	@ResponseBody
	public List deleteReview(HttpSession session, int r_no)throws Exception {
		reviewService.delete(r_no);
		String sUserId=(String)session.getAttribute("sUserId");
		List<Review> rList=reviewService.reviewAllId(sUserId);
		for(int i=0; i<rList.size(); i++) {
			rList.get(i).setProduct(productService.selectByNo(rList.get(i).getProduct().getP_no()));
		}
		System.out.println(rList);
		return rList;	
	}

	@RequestMapping("review_select_one")
	public String reviewSelect(HttpSession session) {
		return "home";	
	}
	
	@RequestMapping("review_list_pno")
	public String reviewListPno(Model model,int p_no) throws Exception{
		List<Review> rList=reviewService.reviewAllPno(p_no);
		model.addAttribute("rList",rList);
		return "home";	
	}
	
	@RequestMapping("review_list_id")
	public String reviewListId(HttpSession session) {
		return "home";	
	}
	









}
