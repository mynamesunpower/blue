package main.java.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import main.java.service.CourseService;
import main.java.vo.CourseVO;

@Controller
@RequestMapping(value = "course/")
public class CourseController {
	
	@Autowired
	private CourseService courseService;

	// DB내용 가져오기 테스트용
	/*
	@RequestMapping(value = "/mongoCourse.do")
	public String coursetest(Model model) {
		List<CourseVO> list = courseService.test();
		model.addAttribute("list", list);
		return "mongoCourse";
	}
	*/
	
	// 코스 메인 진입 
	@RequestMapping(value = "course_main.do")
	public String courseMain(Model model) {
		List<CourseVO> list = courseService.viewAllcourse();
		model.addAttribute("list", list);
		return "course/course_main";
	}
	
	// 코스 상세보기 진입
	@RequestMapping(value = "courseSelect.do")
	public String courseDetail(CourseVO vo, Model model, @RequestParam String _id) {
		CourseVO cvo = courseService.courseSelect(vo, _id);
//		System.out.println(_id);
		
		model.addAttribute("detail", cvo);
		
		return "course/course_detail";
	}
	
	// 나의 코스 목록 진입
	@RequestMapping(value = "course_list.do")
	public String courseList(CourseVO vo, Model model) {
		
		
		return "course/course_list";
	}
	
	
	// 코스 편집하기 진입
	
}
