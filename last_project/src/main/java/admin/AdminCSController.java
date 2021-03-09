package main.java.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminCSController {

	@RequestMapping(value="admin/admin_customer_question.do")
	public String helloAdminQuestion() {
		System.out.println("관리자 ---> 고객 문의 관리");
		
		return "admin/admin_customer_question";
	}
	
	@RequestMapping(value="admin/admin_customer_chat.do")
	public String helloAdminCustomerChat() {
		System.out.println("관리자 ---> 고객 1:1 챗 관리");
		
		return "admin/admin_customer_chat";
	}
	
	@RequestMapping(value="admin/admin_lost.do")
	public String helloAdminLost() {
		System.out.println("관리자 ---> 분실물 관리");
		
		return "admin/admin_lost";
	}
	
}
