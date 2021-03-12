package main.java.controller;
import java.util.ArrayList;
import java.util.Base64;
import java.util.Calendar;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.bson.types.Binary;
import org.bson.types.ObjectId;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import main.java.service.AccomService;
import main.java.service.FestivalService;
import main.java.vo.AccomVO;
import main.java.vo.FestivalVO;
import main.java.vo.RestaurantVO;

@Controller
public class FestivalController {
	@Autowired
	private FestivalService festivalService;

	@Autowired
	private AccomService AccomService;


	 public static Double distance(Double lat1, Double lon1, Double lat2, Double lon2, String unit) {
      	        Double theta = lon1 - lon2;
	        Double dist = Math.sin(deg2rad(lat1)) * Math.sin(deg2rad(lat2)) + Math.cos(deg2rad(lat1)) * Math.cos(deg2rad(lat2)) * Math.cos(deg2rad(theta));

	        dist = Math.acos(dist);
	        dist = rad2deg(dist);
	        dist = dist * 60 * 1.1515;

	        if (unit == "kilometer") {
	            dist = dist * 1.609344;
	        } else if(unit == "meter"){
	            dist = dist * 1609.344;
	        }


	        return (dist);
	    }


	    // This function converts decimal degrees to radians
	    private static double deg2rad(double deg) {
	        return (deg * Math.PI / 180.0);
	    }

	    // This function converts radians to decimal degrees
	    private static double rad2deg(double rad) {
	        return (rad * 180 / Math.PI);
	    }

	// mongo.do 전체 축제 뽑기
	@RequestMapping(value = "/mongo.do")
	public String test2(Model model) {

		List<FestivalVO> list = festivalService.test();
		//List<FestivalVO> list = festivalService.month();
		model.addAttribute("list", list);

		return "mongo";
	}

	//월별 축제???
	@RequestMapping(value = "/mongomonth.do")
	@ResponseBody
	public List<FestivalVO> month(Model model,String month) {
		System.out.println("FestivalController �뿉�꽌 month�슂泥�2");
		List<FestivalVO> list = festivalService.month(month);

		//
		for (FestivalVO vo : list) {
			//  ArrayList<Binary> image瑜�
			//System.out.println(vo.get_id());
			ArrayList<String> imageList = new ArrayList<String>();
			for (Binary img : vo.getImage()) {
				String image = Base64.getEncoder().encodeToString(img.getData());
				imageList.add(image);
			}
			vo.setImages(imageList);
		}




		return list;
	}


	//축제페이지 가기
		@RequestMapping(value = "/mongomonths.do")
		public String month(Model model) {
			System.out.println("FestivalController 에서 month() 요청");

			Calendar cal = Calendar.getInstance();

		//현재 년 월 일
			int year = cal.get ( cal.YEAR );
			int months = cal.get ( cal.MONTH ) + 1 ;
			int date = cal.get ( cal.DATE ) ;
			String mon = Integer.toString(months);
			System.out.println(mon);
			List<FestivalVO> list = festivalService.month(mon);



			//이미지 뽑기
			for (FestivalVO vo : list) {
				// ArrayList<Binary> image瑜�
				ArrayList<String> imageList = new ArrayList<String>();
				for (Binary img : vo.getImage()) {
					String image = Base64.getEncoder().encodeToString(img.getData());
					imageList.add(image);
				}
				vo.setImages(imageList);
			}

			String name = list.get(0).getTitle();
			int startdate = list.get(0).getStartDate();
			int enddate = list.get(0).getEndDate();

			model.addAttribute("list",list);

			model.addAttribute("name", name);
			model.addAttribute("startdate", startdate);
			model.addAttribute("enddate", enddate);

			for(FestivalVO i:list) {
			System.out.println("여기는"+i.getTitle());
		}

			return "festival/festival_reset";
		}


	@RequestMapping(value = "/insert_festival_review.do", method = RequestMethod.POST)
	@ResponseBody
	public int insertFestivalReview(FestivalVO vo, String _id) {

		System.out.println(_id);

		HashMap<String, String> review = vo.getReview();
		String id = review.get("id");
		System.out.println(vo.getReview().get("id"));
		System.out.println(vo.getReview().get("content"));
		System.out.println(vo.getReview().get("festival"));
		System.out.println(vo.getReview().get("service"));
		System.out.println(vo.getReview().get("price"));
		System.out.println(vo.getReview().get("quality"));

		// 현재 데이터의 리뷰 List 가져오기
		ArrayList<HashMap<String, String>> reviews = festivalService.getReviews(_id);

		// List에 review를 추가.
		reviews.add(review);

		// 바뀐 list로 update 쿼리 실행
		int result = festivalService.updateRestaurantReview(reviews, _id);

		return result;
	}


	//추천축제할곳
	@RequestMapping("value=/mongorecommand.do")
	@ResponseBody
	public List<FestivalVO> recommand(){
		List<FestivalVO> list = festivalService.recommand();

		return list;
	}


	//異뺤젣 �긽�꽭 �럹�씠吏� 異뺤젣 �젙蹂�
//	@RequestMapping(value = "/detail.do")
//	@ResponseBody
//	public List<FestivalVO> detail(Model model,String tel) {
//		System.out.println("FestivalController �뿉�꽌 detail�슂泥�");
//		List<FestivalVO> list = festivalService.detail(tel);
//
//		System.out.println("detail()lists"+list);
//
//
//
//		return list;
//	}


	//축제 상세페이지
	@RequestMapping(value = "/details.do")
	public String details(Model model,int tel) {
		System.out.println("FestivalController 에서 details.do 요청");

		List<FestivalVO> list = festivalService.detail(tel);

		//이미지 바이너리
				for (FestivalVO vo : list) {
					// 몽고디비 ArrayList<Binary> image瑜�
					ArrayList<String> imageList = new ArrayList<String>();
					for (Binary img : vo.getImage()) {
						String image = Base64.getEncoder().encodeToString(img.getData());
						imageList.add(image);
					}
					vo.setImages(imageList);
				}

		System.out.println("위도"+list.get(0).getLatitude());



		Map<Double, ObjectId> map= new HashMap<Double, ObjectId>();

		double latitude = list.get(0).getLatitude();

		double longitude = list.get(0).getLongitude();


		//주변 식당 정보 가져오기
		List<AccomVO> lists = AccomService.test();

		for(AccomVO vo : lists) {

			double latitudes = vo.getLatitude();

			double longitudes = vo.getLongitude();

			ObjectId id = vo.get_id();

			System.out.println("double 변수 지정하자");

		  double theta = list.get(0).getLongitude() - longitude;

		  Double distanceMeter = distance(latitude, longitude, vo.getLatitude(), vo.getLongitude(), "kilometer");

			map.put(distanceMeter, vo.get_id() );
		}
			   List<Double> keySet = new ArrayList<>(map.keySet());

		        System.out.println("==Key 값 기준으로 오름차순 정렬==");
		        List<Double> keys = new ArrayList<>(map.keySet());
		        Collections.sort(keys);
		        for (Double key : keys) {
		            System.out.println(String.format("Key : %s, Value : %s", key, map.get(key)));

		}

		ArrayList<HashMap<String, String>> reviews = list.get(0).getReviews();

		model.addAttribute("scores", scoresAverage(reviews));
		model.addAttribute("list", list);

		return "festival/festival_detail";
	}

	//근처축제
	@RequestMapping(value="/nearnear.do")
	@ResponseBody
	public List<List<FestivalVO>> near(Double latitude, Double longitude){
		System.out.println("여기왔다???????????????");

		Map<Double, ObjectId> map= new HashMap<Double, ObjectId>();

		System.out.println(latitude);
		System.out.println(longitude);
		List<FestivalVO> list = festivalService.test();

		for(FestivalVO vo : list) {


		Double distanceMeter = distance(latitude, longitude, vo.getLatitude(), vo.getLongitude(), "kilometer");

			map.put(distanceMeter, vo.get_id() );
	}

		 List<Double> keySet = new ArrayList<>(map.keySet());

	        System.out.println("==Key 값 기준으로 오름차순 정렬==");
	        List<Double> keys = new ArrayList<>(map.keySet());
	        Collections.sort(keys);


	        List<FestivalVO> lists= null;
	        List<List<FestivalVO>> result = new ArrayList<>();
	        for(int i=0; i<=2; i++) {
	        	System.out.println("<><<><><><><><><>"+(map.get(keys.get(i))));


	        	lists = festivalService.near(map.get(keys.get(i)));

	        	for (FestivalVO vo : lists) {

	    			ArrayList<String> imageList = new ArrayList<String>();
	    			for (Binary img : vo.getImage()) {
	    				String image = Base64.getEncoder().encodeToString(img.getData());
	    				imageList.add(image);
	    			}
	    			vo.setImages(imageList);
	    		}

	        	result.add(lists);


	        }



	       //정렬된 키밸류 뽑기
//	        for (Double key : keys) {
//	            System.out.println(String.format("Key : %s, Value : %s", key, map.get(key)));
//
//	        }


		return result;
	}

	//축제 메인페이지 상단 이미지 변경
	@RequestMapping(value="/mongotime.do")
	@ResponseBody
	public List<FestivalVO> tosss(int interval){

		List<FestivalVO> list = festivalService.test();
		System.out.println(list);

		for (FestivalVO vo : list) {

			ArrayList<String> imageList = new ArrayList<String>();
			for (Binary img : vo.getImage()) {
				String image = Base64.getEncoder().encodeToString(img.getData());
				imageList.add(image);
			}
			vo.setImages(imageList);
		}

		return list;
	}

	public int[] scoresAverage(ArrayList<HashMap<String, String>> reviews) {

		int[] scores = new int[5];
		int[] scoresAvg = new int[5];

		// 리뷰가 없을 경우엔
		if (reviews.size() > 0) {

			for (HashMap<String, String> review : reviews) {

				scores[0] += Integer.parseInt(review.get("festival"));
				scores[1] += Integer.parseInt(review.get("service"));
				scores[2] += Integer.parseInt(review.get("price"));
				scores[3] += Integer.parseInt(review.get("quality"));
				scores[4] = (scores[0] + scores[1] + scores[2] + scores[3]) / 4;

			}

			for (int i = 0; i < scoresAvg.length; i++) {
				scoresAvg[i] = scores[i] / reviews.size();
			}

		}

		return scoresAvg;
	}




}
