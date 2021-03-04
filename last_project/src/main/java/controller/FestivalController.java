package main.java.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

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
		
		model.addAttribute("list", list);
		
		return "mongo";
	}
	
}
