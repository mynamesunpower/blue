package main.java.controller;

import java.util.ArrayList;
import java.util.Base64;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

import org.bson.types.Binary;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import main.java.service.RestaurantServiceImpl;
import main.java.vo.RestaurantVO;

@Controller
public class RestaurantController {

	@Autowired
	private RestaurantServiceImpl restaurantService;
	
	@RequestMapping(value = "restaurant/restaurants_list.do")
	public String helloRestaurant(Model model) {
		
		List<RestaurantVO> restaurant_list = restaurantService.selectAll();
		
		
		// 식당마다 for문 돌기
		for (RestaurantVO vo : restaurant_list) {	
			// 축제에 있는 ArrayList<Binary> image를
			BinaryImageToString(vo);
		}
		
		model.addAttribute("list", restaurant_list);
		
		return "restaurant/restaurants_list";
	}
	
	@RequestMapping(value = "restaurant/restaurant_detail.do", method = RequestMethod.GET)
	public String restaurantDetail(@RequestParam("_id") String _id, Model model) {
		System.out.println(_id);
		RestaurantVO restaurantVO = restaurantService.selectOne(_id);
		
		BinaryImageToString(restaurantVO);
		
		model.addAttribute("restaurantVO", restaurantVO);
		
		return "restaurant/restaurant_detail";
	}
	
	@RequestMapping(value = "restaurant/insert_restaurant_review.do", method = RequestMethod.POST)
	@ResponseBody
	public int insertRestaurantReview(RestaurantVO vo, String _id) {
		
		System.out.println(_id);
		System.out.println(vo.getReview().get("id"));
		System.out.println(vo.getReview().get("content"));
		System.out.println(vo.getReview().get("food"));
		System.out.println(vo.getReview().get("service"));
		System.out.println(vo.getReview().get("price"));
		System.out.println(vo.getReview().get("quality"));
		
		int result = restaurantService.insertRestaurantReview(vo.getReview(), _id);
		
		return result;
	}
	
	public void BinaryImageToString(RestaurantVO restaurantVO) {
		
		ArrayList<String> imageList = new ArrayList<String>();
		for (Binary img : restaurantVO.getImage()) {
			String image = Base64.getEncoder().encodeToString(img.getData());
			imageList.add(image);
		}
		restaurantVO.setImages(imageList);
		
	}
	
}
