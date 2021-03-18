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
import main.java.vo.RestaurantVO;

@Controller
public class AccomController {
		
	//의존관계 주입 => AccomServiceImpl 생성
	@Autowired
	private AccomService AccomService;
	
	// 페이징 숫자 폭
	private final int pageScale = 5;
	
	private final String firstScoreName = "lodgment";
	
	//숙박 리스트 조회
	@RequestMapping(value="/accommodations_list.do")
	public String test2(ModelMap m, @RequestParam(value = "page", defaultValue = "1") int pageNumber, 
									@RequestParam(value = "region", required = false) String region) {
		
		
		int totalSize;
		int[] scores;
		
		// 지역을 선택하지 않았다면
		if (region == null) {
			
			List<AccomVO> list = AccomService.selectPageList(pageNumber);
			
			scores = new int[list.size()];
			
			// vo에 있는 binary 이미지들을 base64 String 컨버트
			for (int i = 0; i < list.size(); i++) {
				
				AccomVO vo = list.get(i);
				BinaryImageToString(vo);
				scores[i] = RestaurantController.scoreAverage(vo.getReviews(), "lodgment");
				
			}
			
			// 리스트의 총 갯수
			totalSize = AccomService.getTotalSize();

			m.addAttribute("list", list);
			
		}
		else {
			
			List<AccomVO> regionList = AccomService.getRegionData(region, pageNumber);
			scores = new int[regionList.size()];
			totalSize = regionList.size();
			
			for (int i = 0; i < totalSize; i++) {
				AccomVO vo = regionList.get(i);
				BinaryImageToString(vo);
				scores[i] = RestaurantController.scoreAverage(vo.getReviews(), firstScoreName);
				
			}
			
			m.addAttribute("list", regionList);
		}
		
		
		// 사이드바 지역 설정하기
		List<HashMap> regionList = AccomService.groupRegion();
		int countSum = 0;
		for (HashMap hashMap : regionList) {
			countSum += (Integer) hashMap.get("regionCount");
		}
		
		// 페이징 처리를 위한 hashmap
		HashMap<String, Object> resultMap = RestaurantController.getPagingResultMap(pageNumber, pageScale, totalSize);
		
		m.addAttribute("countSum", countSum);
		m.addAttribute("regionList", regionList);
		m.addAttribute("resultMap", resultMap);
		m.addAttribute("scores", scores);
		
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
	
	
	public void BinaryImageToString(AccomVO accomVO) {

		ArrayList<String> imageList = new ArrayList<String>();
		for (Binary img : accomVO.getImage()) {
			String image = Base64.getEncoder().encodeToString(img.getData());
			imageList.add(image);
		}
		accomVO.setImages(imageList);

	}

}