package main.java.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminReviewController {

	@RequestMapping(value="admin/admin_festival_review.do")
	public String helloAdminFestivalReview() {
		System.out.println("관리자 ---> 축제 리뷰 관리");
		
		return "admin/admin_festival_review";
	}
	
	@RequestMapping(value="admin/admin_restaurant_review.do")
	public String helloAdminRestaurantReview() {
		System.out.println("관리자 ---> 식당 리뷰 관리");
		
		return "admin/admin_restaurant_review";
	}
	
	@RequestMapping(value="admin/admin_lodgment_review.do")
	public String helloAdminLodgmentReview() {
		System.out.println("관리자 ---> 숙박 리뷰 관리");
		
		return "admin/admin_lodgment_review";
	}
	
	@RequestMapping(value="admin/admin_mate_review.do")
	public String helloAdminMateReview() {
		System.out.println("관리자 ---> 메이트 리뷰 관리");
		
		return "admin/admin_mate_review";
	}
	
}
