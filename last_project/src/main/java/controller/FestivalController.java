package main.java.controller;

import java.util.ArrayList;
import java.util.Base64;
import java.util.Calendar;
import java.util.List;

import org.bson.types.Binary;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import main.java.service.FestivalService;
import main.java.vo.FestivalVO;

@Controller
public class FestivalController {

	@Autowired
	private FestivalService festivalService;
	
	// mongo.do 요청이 들어오면
	@RequestMapping(value = "/mongo.do")
	public String test2(Model model) {
		
		List<FestivalVO> list = festivalService.test();
		//List<FestivalVO> list = festivalService.month();
		model.addAttribute("list", list);
		
		return "mongo";
	}
	
//	//월별 축제
//	@RequestMapping(value = "/mongomonth.do")
//	@ResponseBody
//	public List<FestivalVO> month(Model model,String month) {
//		System.out.println("FestivalController 에서 month요청2");
//		List<FestivalVO> list = festivalService.month(month);
//	
//		
//		// 축제마다 for문 돌기
//		for (FestivalVO vo : list) {
//			// 축제에 있는 ArrayList<Binary> image를
//			ArrayList<String> imageList = new ArrayList<String>();
//			for (Binary img : vo.getImage()) {
//				String image = Base64.getEncoder().encodeToString(img.getData());
//				imageList.add(image);
//			}
//			vo.setImages(imageList);
//		}
//		
//		System.out.println("나도"+list);
//		
//		
//		return list;
//	}
	
	
	//월별 축제
		@RequestMapping(value = "/mongomonth.do")
		public String month(Model model,String month) {
			System.out.println("FestivalController 에서 month요청");
			
			Calendar cal = Calendar.getInstance();
			 
		//현재년,월, 일 구하기
			int year = cal.get ( cal.YEAR );
			int months = cal.get ( cal.MONTH ) + 1 ;
			int date = cal.get ( cal.DATE ) ;			 
			String mon = Integer.toString(months);
			
			List<FestivalVO> list = festivalService.month(mon);
		
			
			// 축제마다 for문 돌기
			for (FestivalVO vo : list) {
				// 축제에 있는 ArrayList<Binary> image를
				ArrayList<String> imageList = new ArrayList<String>();
				for (Binary img : vo.getImage()) {
					String image = Base64.getEncoder().encodeToString(img.getData());
					imageList.add(image);
				}
				vo.setImages(imageList);
			}
			
			System.out.println("나도"+list);
			String name = list.get(0).getFestival_name();
			String startdate = list.get(0).getStart_date();
			String enddate = list.get(0).getEnd_date();
			
			model.addAttribute("list",list);
			
			model.addAttribute("name", name);
			model.addAttribute("startdate", startdate);
			model.addAttribute("enddate", enddate);
			
			System.out.println(name);
			
			
			return "festival_reset";
		}
	
	
	
//	//월별 축제
//		@RequestMapping(value = "/mongomonth.do")
//		@ResponseBody
//		public List<FestivalVO> months(Model model) {
//			System.out.println("FestivalController 에서 month요청2");
//			List<FestivalVO> list = festivalService.months();
//		
//			
//			// 축제마다 for문 돌기
//			for (FestivalVO vo : list) {
//				// 축제에 있는 ArrayList<Binary> image를
//				ArrayList<String> imageList = new ArrayList<String>();
//				for (Binary img : vo.getImage()) {
//					String image = Base64.getEncoder().encodeToString(img.getData());
//					imageList.add(image);
//				}
//				vo.setImages(imageList);
//			}
//			
//			System.out.println("나도"+list);
//			
//			
//			return list;
//		}
	
	
	
	//추천축제
	@RequestMapping("value=/mongorecommand.do")
	@ResponseBody
	public List<FestivalVO> recommand(){
		List<FestivalVO> list = festivalService.recommand();
		
		return list;
	}
	
	
	//축제 상세 페이지 축제 정보
//	@RequestMapping(value = "/detail.do")
//	@ResponseBody
//	public List<FestivalVO> detail(Model model,String tel) {
//		System.out.println("FestivalController 에서 detail요청");
//		List<FestivalVO> list = festivalService.detail(tel);
//		
//		System.out.println("detail()lists"+list);
//		
//		
//		
//		return list;
//	}
	
	
	//축제 상세페이지 축제정보
	@RequestMapping(value = "/details.do")
	public String details(Model model,int tel) {
		System.out.println(tel);
		System.out.println("FestivalController 에서 details.do요청");
		List<FestivalVO> list = festivalService.detail(tel);
		
		// 축제마다 for문 돌기
				for (FestivalVO vo : list) {
					// 축제에 있는 ArrayList<Binary> image를
					ArrayList<String> imageList = new ArrayList<String>();
					for (Binary img : vo.getImage()) {
						String image = Base64.getEncoder().encodeToString(img.getData());
						imageList.add(image);
					}
					vo.setImages(imageList);
				}
		
		
		String[] adr = list.get(0).getAddress().split(" ");
		String addr = adr[1];
		
		
		
		
		
		
			
		
		model.addAttribute("list", list);
		
		
		return "festival_detail";
	}
	
	
}
