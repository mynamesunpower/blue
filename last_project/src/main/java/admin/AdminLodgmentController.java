package main.java.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminLodgmentController {

	
	
	@RequestMapping(value="admin/admin_lodgment.do")
	public String helloAdminFestival() {
		System.out.println("관리자 ---> 축제 관리");
		
		return "admin/admin_lodgment";
	}
	
	
}
