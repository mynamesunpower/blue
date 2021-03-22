package main.java.controller;

import java.util.ArrayList;
import java.util.Base64;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.bson.types.Binary;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import main.java.model.RestaurantDAOImpl;
import main.java.service.CourseService;
import main.java.service.RestaurantServiceImpl;
import main.java.vo.CourseVO;
import main.java.vo.RestaurantVO;

@Controller
public class RestaurantController {

	@Autowired
	private RestaurantServiceImpl restaurantService;

	@Autowired
	private CourseService courseService;

	// 페이징 번호 갯수
	private final int pageScale = 5;


	// 식당 목록 불러오기.
	// param -> int page : 페이지 번호
	// param -> String word : 카테고리명
	@RequestMapping(value = "/restaurants_list.do")
	public String helloRestaurant(ModelMap model,
			@RequestParam(value = "page", defaultValue = "1") int pageNumber,
			@RequestParam(value = "category", required = false) String word) {


		int totalSize;
		int[] scores;

		// 카테고리를 클릭하지 않았다면
		if (word == null) {

			List<RestaurantVO> restaurant_list = restaurantService.selectPageList(pageNumber);

			scores = new int[restaurant_list.size()];

			// 식당마다 for문 돌기
			for (int i = 0; i < restaurant_list.size(); i++) {
				RestaurantVO vo = restaurant_list.get(i);

				// 축제에 있는 ArrayList<Binary> image를 String 데이터로 변환
				BinaryImageToString(vo);

				// 리뷰에 있는 각 점수 평균을 가져오는 함수, (식당평균, 서비스평균, 맛평균, 분위기평균, 전체평균) 그 중 [4]번 요소 (전체 평균)
				scores[i] = scoreAverage(vo.getReviews(), "food");
			}


			// 리스트의 총 갯수
			totalSize = restaurantService.getTotalSize();

			model.addAttribute("list", restaurant_list);

		}
		// 카테고리를 클릭했다면
		else {
			System.out.println("카테고리 -> " + word);

			List<RestaurantVO> categoryList = restaurantService.getCategoryData(word, pageNumber);
			scores = new int[categoryList.size()];
			System.out.println(categoryList.size());

			// 식당마다 for문 돌기
			for (int i = 0; i < categoryList.size(); i++) {
				RestaurantVO vo = categoryList.get(i);

				// 축제에 있는 ArrayList<Binary> image를 String 데이터로 변환
				BinaryImageToString(vo);

				// 리뷰에 있는 각 점수 평균을 가져오는 함수, (식당평균, 서비스평균, 맛평균, 분위기평균, 전체평균) 그 중 [4]번 요소 (전체 평균)
				scores[i] = scoreAverage(vo.getReviews(), "food");
			}

			totalSize = categoryList.size();

			model.addAttribute("list", categoryList);
		}

		// 왼쪽 사이드에 띄우기 위해서 카테고리 가져오기
		List<HashMap> categories = restaurantService.getGroupCategory();
		int countSum = 0;
		for (HashMap hashMap : categories) {
			countSum += (Integer) hashMap.get("countA");
		}

		// 페이징 처리를 위한 map 만들기
		HashMap<String, Object> resultMap = getPagingResultMap(pageNumber, pageScale, totalSize);

		model.addAttribute("countSum", countSum);
		model.addAttribute("categories", categories);
		model.addAttribute("resultMap", resultMap);
		model.addAttribute("scores", scores);


		return "restaurant/restaurants_list";
	}

	@RequestMapping(value = "restaurant_detail.do", method = RequestMethod.GET)
	public String restaurantDetail(@RequestParam("_id") String _id, Model model, HttpSession session) {
		System.out.println(_id);

		// _id (PK)로 식당을 선택해 VO 객체를 가져온다.
		RestaurantVO restaurantVO = restaurantService.selectOne(_id);

		// DB의 Binary형 이미지들을 String 데이터로 변환하기.
		BinaryImageToString(restaurantVO);

		// 해당 식당 정보 VO 객체에서 reviews 컬럼의 데이터를 가져온다.
		ArrayList<HashMap<String, String>> reviews = restaurantVO.getReviews();

		model.addAttribute("scores", scoresAverage(reviews, "food"));
		model.addAttribute("restaurantVO", restaurantVO);
		System.out.println(restaurantVO.getLatitude());
		System.out.println(restaurantVO.getLongitude());

		// 식당 상세 페이지에서 '코스에 담기' 눌렀을 때, 팝업창에 내가 가진 코스명 리스트 띄워놓기 위해 필요.
		String memberId = (String) session.getAttribute("memberId");
		List<CourseVO> clist = courseService.viewMycourse(memberId);
		// 코스 데이터가 없는 유저의 경우 vo에 아무것도 없기 때문에 model.addAttribute("clist", clist); 를 해줄수가 없음. 그래서 list가 null이 아닌 경우에만 model.addAttribute("clist", clist);를 해주게 함.
		if (restaurantVO != null) {
			model.addAttribute("clist", clist);
		} // 여기까지

		return "restaurant/restaurant_detail";
	}


	@RequestMapping(value = "/insert_restaurant_review.do", method = RequestMethod.POST)
	@ResponseBody
	public int insertRestaurantReview(RestaurantVO vo, String _id) {

		System.out.println(_id);

		HashMap<String, String> review = vo.getReview();
		String id = review.get("id");
		System.out.println(vo.getReview().get("id"));
		System.out.println(vo.getReview().get("content"));
		System.out.println(vo.getReview().get("food"));
		System.out.println(vo.getReview().get("service"));
		System.out.println(vo.getReview().get("price"));
		System.out.println(vo.getReview().get("quality"));

		// 현재 데이터의 리뷰 List 가져오기
		ArrayList<HashMap<String, String>> reviews = restaurantService.getReviews(_id);

		// List에 review를 추가.
		reviews.add(review);

		// 바뀐 list로 update 쿼리 실행
		int result = restaurantService.updateRestaurantReview(reviews, _id);

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

	// paging 처리용 hashmap 만들기.
	public static HashMap<String, Object> getPagingResultMap(int pageNumber, int pageScale, int totalSize) {

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
		System.out.println(pageGroup + " / " + totalSize + " / " + pageNumber + " / " + pageScale + " / " + startPage + " / " + endPage + " / " + nextPage + " / " + previousPage);

		return resultMap;
	}


	public static int[] scoresAverage(ArrayList<HashMap<String, String>> reviews, String firstScoreName) {

		int[] scores = new int[5];
		int[] scoresAvg = new int[5];

		// 리뷰가 없을 경우엔
		if (reviews.size() > 0) {

			for (HashMap<String, String> review : reviews) {

				scores[0] += Integer.parseInt(review.get(firstScoreName));
				scores[1] += Integer.parseInt(review.get("service"));
				scores[2] += Integer.parseInt(review.get("price"));
				scores[3] += Integer.parseInt(review.get("quality"));
				scores[4] = (scores[0] + scores[1] + scores[2] + scores[3]) / 4;

			}

			for (int i = 0; i < scoresAvg.length; i++) {
				scoresAvg[i] = scores[i]/reviews.size();
			}

		}

		return scoresAvg;
	}


	public static int scoreAverage(ArrayList<HashMap<String, String>> reviews, String firstScoreName) {

		int[] scores = new int[5];
		int scoreSum = 0;
		int scoreAverage = 0;

		if (reviews.size() > 0) {
			for (HashMap<String, String> review : reviews) {

				// firstScoreName -> festival / food / lodgment
				scores[0] = Integer.parseInt(review.get(firstScoreName));
				scores[1] = Integer.parseInt(review.get("service"));
				scores[2] = Integer.parseInt(review.get("price"));
				scores[3] = Integer.parseInt(review.get("quality"));
				scores[4] = (scores[0] + scores[1] + scores[2] + scores[3]) / 4;
				//System.out.println(scores[0] + "/" + scores[1] + "/" + scores[2] + "/" + scores[3] + "/" + scores[4]);
				scoreSum += scores[4];

			}

			scoreAverage = scoreSum / reviews.size();

		}
		else scoreAverage = 0;


		return scoreAverage;

	}


	//식당 개수 구하기(메인페이지)
	@RequestMapping(value="restaurantcount.do")
	@ResponseBody
	public int restaurant_Count() {

		int count = restaurantService.count();

		return count;
	}



}
