package com.itwill.yoridogam.controller.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.itwill.yoridogam.member.Member;

public class AuthLoginInterceptor extends HandlerInterceptorAdapter{ //implements?
	
	// client request->DispatcherServlet 실행 후 controller로 들어가는 request에 앞서서 실행
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response,Object handler)throws Exception {
		
		// DispatcherServlet이 mapping하는 controller method인지 확인
		if(handler instanceof HandlerMethod==false) {
			//아니면 controller로 진행 (정적리소스들이 해당)
			return true;
		}
		HandlerMethod handlerMethod=(HandlerMethod)handler;
		LoginCheck loginCheck=handlerMethod.getMethodAnnotation(LoginCheck.class);
		
		//method에 LoginCheck annotation이 없다면 해당 loginCheck 필요 없음으로 간주
		if(loginCheck==null) {
			return true;
		}
		
		
		//session 객체 요청
		HttpSession session=request.getSession();
		
		//login시 session에 설정한 session id(sUserId)
		String sUserId=(String) session.getAttribute("sUserId");
		String sTeacherId=(String) session.getAttribute("sTeacherId");

		//login 상태인지 확인
		if(sUserId==null&&sTeacherId==null) {
			response.sendRedirect("member_login_form");//추후 로그인폼으로 수정
			//아니면 로그인하러 가
			return false;
		}
		
		return true;
	}	
	
	// controller 실행 이후 화면 출력 이전 수행 method
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response,Object handler, ModelAndView modelAndView)throws Exception{
		super.postHandle(request, response, handler, modelAndView);
	}
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {
		super.afterCompletion(request, response, handler, ex);
	}
}
