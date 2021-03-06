package main.java.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import main.java.service.MongoServiceImpl;
import main.java.vo.PersonVO;

@Controller
public class MongoController {

	@Autowired
	private MongoServiceImpl mongoService;
	
	@RequestMapping(value = "/mongotest.do")
	public String test2(Model model) {
		List<PersonVO> list = mongoService.test();
		for (PersonVO personVO : list) {
			System.out.println(personVO.getId());
			System.out.println(personVO.getName());
			System.out.println(personVO.getAge());
		}
		model.addAttribute("list", list);
		return "mongo";
	}
	

}
