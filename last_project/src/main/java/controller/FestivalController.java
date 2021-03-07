package main.java.controller;

import java.util.List;

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
	
	//월별 축제
	@RequestMapping(value = "/mongomonth.do")
	@ResponseBody
	public List<FestivalVO> month(Model model,String month) {
		System.out.println("FestivalController 에서 month요청2");
		List<FestivalVO> list = festivalService.month(month);
		//model.addAttribute("list", list);
		
		//model.addAttribute("list", list);
		//System.out.println(list);
		System.out.println("나도"+list);
		
		
		return list;
	}
	
	//추천축제
	@RequestMapping("value=/mongorecommand.do")
	@ResponseBody
	public List<FestivalVO> recommand(){
		List<FestivalVO> list = festivalService.recommand();
		
		return list;
	}
	
	
	//축제 상세 페이지 축제 정보
	@RequestMapping(value = "/detail.do")
	@ResponseBody
	public List<FestivalVO> detail(Model model,String tel) {
		System.out.println("FestivalController 에서 detail요청");
		List<FestivalVO> list = festivalService.detail(tel);
		
		System.out.println("detail()list"+list);
		
		
		return list;
	}
	
	@RequestMapping(value = "/details.do")
	public String details(Model model,String tel) {
		System.out.println("FestivalController 에서 details요청");
		List<FestivalVO> list = festivalService.detail(tel);
		
		System.out.println("detail()list"+list);
		model.addAttribute("list", list);
		
		
		return "festival_detail";
	}
	
	
}
