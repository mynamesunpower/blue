package main.java.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import main.java.service.MemberService;
import main.java.vo.MemberVO;

@Controller
public class MyPageController {

	@Autowired
	private MemberService memberService;
	
	@RequestMapping("mypage.do")
	public String helloMyPage(@RequestParam String user_id, Model model) {
		
		MemberVO vo = memberService.selectOne(user_id);
		System.out.println(vo.getId());

		
		model.addAttribute("vo", vo);
		
		return "member/mypage";
	}
	
}
