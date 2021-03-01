package main.java.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import main.java.service.MariaServiceImpl;
import main.java.vo.MariaVO;

@Controller
public class MariaController {
	
	@Autowired
	private MariaServiceImpl service;
	
	@RequestMapping(value="/maria.do", method = RequestMethod.GET)
	public String test(Model model) throws Exception {
		List<MariaVO> list;
		list = service.test();
		model.addAttribute("list", list);
		
		return "maria";
	}
	
}
