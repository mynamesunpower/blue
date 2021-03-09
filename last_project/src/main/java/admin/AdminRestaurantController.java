package main.java.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminRestaurantController {

	@RequestMapping(value="admin/admin_restaurant.do")
	public String helloAdminFestival() {
		System.out.println("관리자 ---> 축제 관리");
		
		return "admin/admin_restaurant";
	}
	
}
