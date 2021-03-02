package main.java.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HelloController {

	// 어디든 보내버려
	@RequestMapping(value="/{path}")
	public String hello(@PathVariable String path) {
		
		System.out.println("[HelloController > " + path + " 요청]");

		return path;
	}
	
	
	// 에러
	@RequestMapping(value="error.do")
	public String error() {
		
		System.out.println("[에러 발생: 에러 페이지로 이동]");
		
		return "error";
		
	}
	
}
