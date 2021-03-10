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
import org.springframework.web.bind.annotation.ResponseBody;

import main.java.service.AccomService;
import main.java.service.FestivalService;
import main.java.vo.AccomVO;
import main.java.vo.FestivalVO;

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
	
	// mongo.do
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
	
		// 異뺤젣留덈떎 for臾� �룎湲�
		for (FestivalVO vo : list) {
			// 異뺤젣�뿉 �엳�뒗 ArrayList<Binary> image瑜�
			//System.out.println(vo.get_id());
			ArrayList<String> imageList = new ArrayList<String>();
			for (Binary img : vo.getImage()) {
				String image = Base64.getEncoder().encodeToString(img.getData());
				imageList.add(image);
			}
			vo.setImages(imageList);
		}
		
		//System.out.println("�굹�룄"+list);
		
		
		return list;
	}
	
	
	//축제페이지 가기
		@RequestMapping(value = "/mongomonths.do")
		public String month(Model model) {
			System.out.println("FestivalController 에서 month() 요청");
			
			Calendar cal = Calendar.getInstance();
			 
		//�쁽�옱�뀈,�썡, �씪 援ы븯湲�
			int year = cal.get ( cal.YEAR );
			int months = cal.get ( cal.MONTH ) + 1 ;
			int date = cal.get ( cal.DATE ) ;			 
			String mon = Integer.toString(months);
			System.out.println(mon);
			List<FestivalVO> list = festivalService.month(mon);
		
			System.out.println("나나나나나"+ list);
			// 異뺤젣留덈떎 for臾� �룎湲�
			for (FestivalVO vo : list) {
				// 異뺤젣�뿉 �엳�뒗 ArrayList<Binary> image瑜�
				ArrayList<String> imageList = new ArrayList<String>();
				for (Binary img : vo.getImage()) {
					String image = Base64.getEncoder().encodeToString(img.getData());
					imageList.add(image);
				}
				vo.setImages(imageList);
			}
			
			System.out.println("�굹�룄"+list);
			String name = list.get(0).getFestival_name();
			int startdate = list.get(0).getStartDate();
			int enddate = list.get(0).getEndDate();
			
			model.addAttribute("list",list);
			
			model.addAttribute("name", name);
			model.addAttribute("startdate", startdate);
			model.addAttribute("enddate", enddate);
			
			for(FestivalVO i:list) {
			System.out.println("여기는"+i.getFestival_name());
		}
			
			return "festival_reset";
		}
	
	
	
//	//�썡蹂� 異뺤젣
//		@RequestMapping(value = "/mongomonth.do")
//		@ResponseBody
//		public List<FestivalVO> months(Model model) {
//			System.out.println("FestivalController �뿉�꽌 month�슂泥�2");
//			List<FestivalVO> list = festivalService.months();
//		
//			
//			// 異뺤젣留덈떎 for臾� �룎湲�
//			for (FestivalVO vo : list) {
//				// 異뺤젣�뿉 �엳�뒗 ArrayList<Binary> image瑜�
//				ArrayList<String> imageList = new ArrayList<String>();
//				for (Binary img : vo.getImage()) {
//					String image = Base64.getEncoder().encodeToString(img.getData());
//					imageList.add(image);
//				}
//				vo.setImages(imageList);
//			}
//			
//			System.out.println("�굹�룄"+list);
//			
//			
//			return list;
//		}
	
	
	
	//異붿쿇異뺤젣
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
		System.out.println(tel);
		System.out.println("FestivalController 에서 details.do 요청했어");
		List<FestivalVO> list = festivalService.detail(tel);
		
		// 異뺤젣留덈떎 for臾� �룎湲�
				for (FestivalVO vo : list) {
					// 異뺤젣�뿉 �엳�뒗 ArrayList<Binary> image瑜�
					ArrayList<String> imageList = new ArrayList<String>();
					for (Binary img : vo.getImage()) {
						String image = Base64.getEncoder().encodeToString(img.getData());
						imageList.add(image);
					}
					vo.setImages(imageList);
				}
		
		System.out.println("위도"+list.get(0).getLatitude());
	
		
		
		Map<Double, ObjectId> map= new HashMap<Double, ObjectId>();
				
		System.out.println("FestivalController 에서 details.do 요청");
		List<AccomVO> lists = AccomService.test();
		
	
		for(AccomVO vo : lists) {
			
			double latitude = vo.getLatitude();
		
			double longitude = vo.getLongitude();
		
			ObjectId id = vo.get_id();
			
			System.out.println("double 변수 지정하자");
			//double distanceMeter = distance(list.get(0).getLatitude(), list.get(0).getLongitude(), latitude, longitude, "meter", id);
			
			
			  double theta = list.get(0).getLongitude() - longitude;
			  System.out.println("위도래"+latitude);
		        double dist = Math.sin(deg2rad(list.get(0).getLatitude())) * Math.sin(deg2rad(latitude)) + Math.cos(deg2rad(list.get(0).getLatitude())) * Math.cos(deg2rad(latitude)) * Math.cos(deg2rad(theta));
		         
		        dist = Math.acos(dist);
		        dist = rad2deg(dist);
		        dist = dist * 60 * 1.1515;
		        
		        //if (unit == "kilometer") {
		            //dist = dist * 1.609344;
		        //} else if(unit == "meter"){
		            dist = dist * 1609.344;
		        //}
			System.out.println("왔니");
			map.put(dist, id );
		}
			   List<Double> keySet = new ArrayList<>(map.keySet());

		        System.out.println("==Key 값 기준으로 오름차순 정렬==");
		        List<Double> keys = new ArrayList<>(map.keySet());
		        Collections.sort(keys);
		        for (Double key : keys) {
		            System.out.println(String.format("Key : %s, Value : %s", key, map.get(key)));
			
		}
					
		model.addAttribute("list", list);
			
		return "festival_detail";
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
	    			// 異뺤젣�뿉 �엳�뒗 ArrayList<Binary> image瑜�
	    			
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
	
	
	@RequestMapping(value="/mongotime.do")
	@ResponseBody
	public List<FestivalVO> tosss(int interval){
		System.out.println("일정시간 돈다");
		List<FestivalVO> list = festivalService.test();
		System.out.println(list);
		
		for (FestivalVO vo : list) {
			// 異뺤젣�뿉 �엳�뒗 ArrayList<Binary> image瑜�
			
			ArrayList<String> imageList = new ArrayList<String>();
			for (Binary img : vo.getImage()) {
				String image = Base64.getEncoder().encodeToString(img.getData());
				imageList.add(image);
			}
			vo.setImages(imageList);
		}
		
		return list;
	}
	
	
	
	
}
