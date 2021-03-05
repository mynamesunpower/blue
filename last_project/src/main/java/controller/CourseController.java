package main.java.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import main.java.service.CourseService;
import main.java.vo.CourseVO;

@Controller
public class CourseController {
	
	@Autowired
	private CourseService courseService;
	
	@RequestMapping(value = "/mongoCourse.do")
	public String coursetest(Model model) {
		List<CourseVO> list = courseService.test();
		model.addAttribute("list", list);
		return "mongoCourse";
	}

}
