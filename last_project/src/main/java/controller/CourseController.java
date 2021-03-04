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
	
	@RequestMapping(value = "/mongoCourse.do")  // 집에 가서 mongo DB에 코스 데이터 아무렇게나 집어 넣고, 어떤 페이지에 mongoCourse.do 요청할 수 있게 하나 만들고 봐보자.
	public String coursetest(Model model) {
		List<CourseVO> list = courseService.test();
		model.addAttribute("list", list);
		return "mongoCourse";
	}

}
