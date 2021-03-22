package main.java.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import main.java.service.RestaurantServiceImpl;
import main.java.vo.RestaurantVO;

@Controller
public class AdminRestaurantController {
	

	@Autowired
	private RestaurantServiceImpl restaurantService;

	@RequestMapping(value="admin/admin_restaurant.do")
	public String helloAdminRestaurant(Model m) {
		System.out.println("관리자 ---> 식당 관리");
		
		List<RestaurantVO> restaurant_list = restaurantService.selectAll();
		
		m.addAttribute("restaurantlist", restaurant_list);
		
		return "admin/admin_restaurant";
	}
	
	//관리자 식당 insert
		@RequestMapping(value="admin/insert_restaurant.do")
		public String insert_restaurant(RestaurantVO vo, Model model) {
			System.out.println("관리자 ---> 숙박 관리 insert");
			
			//관리자 페이지에서 숙박 추가
			RestaurantVO result = restaurantService.insert_restaurant(vo);
			
			List<RestaurantVO> restaurant_list = restaurantService.selectAll();
			model.addAttribute("restaurantlist", restaurant_list);
			
			return "admin/admin_restaurant";
			
		}
		
		
		//관리자 식당 modify
		@RequestMapping(value="admin/modify_restaurant.do")
		public String modify_restaurant(RestaurantVO vo, Model model) {
			System.out.println("관리자 ---> 숙박 관리 modify");
			
			//관리자 페이지에서 축제 수정
			RestaurantVO result = restaurantService.modify_restaurant(vo);
			
			
			//수정 후 돌아가는 화면에서 다시 수정된 리스트 띄우기
			List<RestaurantVO> restaurant_list = restaurantService.selectAll();
			model.addAttribute("restaurantlist", restaurant_list);
			
			return "admin/admin_restaurant";	
		}
		
		//관리자 식당 delete
			@RequestMapping(value="admin/delete_restaurant.do")
			public String delete_restaurant(RestaurantVO vo, Model model) {
			
				System.out.println("관리자 ---> 숙박 관리 delete");
						
				//String del_check = request.getParameter("delete_confirm");
						
				System.out.println("삭제하기");
			
				RestaurantVO result = restaurantService.delete_restaurant(vo);
				
				
				//삭제 후 돌아가는 화면에서 다시 삭제된 리스트 띄우기
				List<RestaurantVO> restaurant_list = restaurantService.selectAll();
				model.addAttribute("restaurantlist", restaurant_list);
				
				
				return "admin/admin_restaurant";
				}
		
	
}
