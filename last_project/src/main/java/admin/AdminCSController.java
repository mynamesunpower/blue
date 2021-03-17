package main.java.admin;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import main.java.vo.ChatVO;

@Controller
public class AdminCSController {

	ArrayList<ChatVO> chatList;
	
	@RequestMapping(value="admin/admin_customer_question.do")
	public String helloAdminQuestion() {
		System.out.println("관리자 ---> 고객 문의 관리");
		
		return "admin/admin_customer_question";
	}
	
	@RequestMapping(value="admin/admin_customer_chat.do")
	public String helloAdminCustomerChat(@RequestParam(required = false) String id, 
			@RequestParam(required = false) String name, 
			@RequestParam(required = false) String first_date, 
			@RequestParam(required = false) String second_date,
			Model model, HttpServletRequest request) {
		
		System.out.println(request.getHeader("REFERER")); 
		
		if (chatList == null) {
			chatList = new ArrayList<>();
		}
		
		// 마이페이지에서 접근했닝?
		if (request.getHeader("REFERER").contains("mypage")) {
			System.out.println("마이페이지 ---> 고객-관리자 1:1 챗 관리");
			System.out.println(id + " / " + name + " / " + first_date + " / " + second_date);
			
			ChatVO vo = new ChatVO();
			vo.setId(id);
			vo.setName(name);
			vo.setFirst_date(first_date);
			second_date = second_date.replace('-', ' ');
			vo.setSecond_date(second_date);
			System.out.println(second_date);
			chatList.add(vo);
		}
		// 관리자에서 접근했닝?
		else {
			System.out.println("관리자 ---> 고객-관리자 1:1 챗 관리");
			
			for (ChatVO chatVO : chatList) {
				System.out.println(chatVO.getId() + "/" + chatVO.getName() + "/" + chatVO.getFirst_date() + "/" + chatVO.getSecond_date());
			}
			
			model.addAttribute("chatList", chatList);
		}
		
		
		return "admin/admin_customer_chat";
	}
	
	@RequestMapping(value="admin/admin_lost.do")
	public String helloAdminLost() {
		System.out.println("관리자 ---> 분실물 관리");
		
		return "admin/admin_lost";
	}
	
	
	// User의 고객센터 1:1 채팅 입장 요청
	@RequestMapping(value = "CustomerService/memberChat.do")
	public String chat(Model model) {
		
		String userId = "test3";
		
		System.out.println("chat 뷰 요청");
		return "CustomerService/memberChat";
	}
	
	
	// Admin의 고객센터 1:1 채팅 입장 요청
	@RequestMapping(value = "admin/adminChat.do") 
	public String adminChat() {
		System.out.println("adminChat 뷰 요청");
		return "admin/adminChat";
	}
	
	
}
