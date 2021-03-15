package main.java.controller;

import java.util.ArrayList;
import java.util.Base64;
import java.util.HashMap;
import java.util.List;

import org.bson.types.Binary;
import org.bson.types.ObjectId;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import main.java.service.AccomService;
import main.java.vo.AccomVO;

@Controller
public class AccomController {
		
	//의존관계 주입 => AccomServiceImpl 생성
	@Autowired
	private AccomService AccomService;
	
	//숙박 리스트 조회
	@RequestMapping(value="/accommodations_list.do")
	public String test2(ModelMap m, @RequestParam(value = "page", defaultValue = "1") int pageNumber) {
		
		System.out.println("AccomController 리스트 요청2");
		List<AccomVO> list = AccomService.selectPageList(pageNumber);
		
		System.out.println("컨트롤러에서"+list);
		
		int[] scores = new int[list.size()];
		
		// 이미지 띄우기
		for (AccomVO vo : list) {
			// ArrayList<Binary> image
			ArrayList<String> imageList = new ArrayList<String>();
			for (Binary img : vo.getImage()) {
				String image = Base64.getEncoder().encodeToString(img.getData());
				imageList.add(image);
			}
			vo.setImages(imageList);
		}
		
		for (int i = 0; i < list.size(); i++) {
			
			AccomVO vo = list.get(i);
			
			ArrayList<String> imageList = new ArrayList<String>();
			for (Binary img : vo.getImage()) {
				String image = Base64.getEncoder().encodeToString(img.getData());
				imageList.add(image);
			}
			vo.setImages(imageList);
			
			scores[i] = RestaurantController.scoreAverage(vo.getReviews(), "lodgment");
			
		}
		
		int pageScale = 5;
		int totalSize = AccomService.getTotalSize();
		HashMap<String, Object> resultMap = new HashMap<String, Object>();
		int pageGroup = (int)Math.ceil((double) pageNumber / 5);
		System.out.println("pageGroup -> " + pageGroup);
		long startPage = ((pageGroup - 1) * pageScale) + 1;
		long endPage = startPage + pageScale - 1;
		long previousPage = (pageGroup - 2) * pageScale + 1;
		long nextPage = pageGroup * pageScale + 1;
		
		resultMap.put("pageGroup", pageGroup);
		resultMap.put("total", totalSize);
		resultMap.put("page", pageNumber);
		resultMap.put("pageScale", pageScale);
		resultMap.put("startPage", startPage);
		resultMap.put("endPage", endPage);
		resultMap.put("nextPage", nextPage);
		resultMap.put("previousPage", previousPage);
		
		
		m.addAttribute("resultMap", resultMap);
		m.addAttribute("list", list);
		
		return "accommodation/accommodations_list";
		
	}
	
	//숙박 상세 페이지
	@RequestMapping(value="/accommodations_detail.do")
	public String test3(ModelMap m, @RequestParam("_id") String _id) {
		System.out.println("AccomController 상세 요청 : "+ _id);
		
		AccomVO vo = AccomService.detail(_id);
		
		// 이미지 띄우기
		ArrayList<String> imageList = new ArrayList<String>();
		for (Binary img : vo.getImage()) {
			String image = Base64.getEncoder().encodeToString(img.getData());
			imageList.add(image);
		}
		vo.setImages(imageList);
		
		ArrayList<HashMap<String, String>> reviews = vo.getReviews();
		
		//m.addAttribute("", vo);
		m.addAttribute("scores", RestaurantController.scoresAverage(reviews, "lodgment"));
		m.addAttribute("detail", vo);		
		System.out.println(vo.get_id());
		return "accommodation/accommodations_detail";
	}
	
	@RequestMapping(value = "/insert_lodgment_review.do", method = RequestMethod.POST)
	@ResponseBody
	public int insertLodgmentReview(AccomVO vo, String _id) {
		
		System.out.println(_id);
		
		HashMap<String, String> review = vo.getReview();
		String id = review.get("id");
		System.out.println(vo.getReview().get("id"));
		System.out.println(vo.getReview().get("content"));
		System.out.println(vo.getReview().get("lodgment"));
		System.out.println(vo.getReview().get("service"));
		System.out.println(vo.getReview().get("price"));
		System.out.println(vo.getReview().get("quality"));
		
		// 현재 데이터의 리뷰 List 가져오기
		ArrayList<HashMap<String, String>> reviews = AccomService.getReviews(_id);
		
		// List에 review를 추가.
		reviews.add(review);
		
		// 바뀐 list로 update 쿼리 실행
		int result = AccomService.updateAccomReview(reviews, _id);
		
		return result;
	}
	
	


}
