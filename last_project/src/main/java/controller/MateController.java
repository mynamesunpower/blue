package main.java.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import main.java.vo.MateVO;

@Controller
public class MateController {

	public String helloMate() {
		return "";
	}
	
	@RequestMapping("")
	public String mateRegister(MateVO vo) {
		return "";
	}
	
}
