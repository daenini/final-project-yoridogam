package com.itwill.yoridogam.exception;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
public class ExceptionController {
	@ExceptionHandler(Exception.class) // exception이 발생하면 해주는 코드
	public String handle_exception(Exception exception) {
		exception.printStackTrace();
		return "error";
	}
}