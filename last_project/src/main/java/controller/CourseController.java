package main.java.controller;

import java.util.ArrayList;
import java.util.Base64;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.bson.types.Binary;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import main.java.service.CourseService;
import main.java.vo.CourseVO;

@Controller
@RequestMapping(value = "course/")
public class CourseController {
	
	@Autowired
	private CourseService courseService;

	// DB내용 가져오기 테스트용
	@RequestMapping(value = "mongoCourse.do")
	public String coursetest(Model model) {
		List<CourseVO> list = courseService.test();
		/*
		for(CourseVO vo : list) {
			ArrayList<String> imageList = new ArrayList<String>();
			for(Binary img : vo.getImage()) {
				String image = Base64.getEncoder().encodeToString(img.getData());
				imageList.add(image);
			}
			vo.setCoursePath(imageList);
		}
		*/
		model.addAttribute("list", list);
		return "course/mongoCourse";
	}
	
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
		System.out.println("course id:"+_id);
		CourseVO cvo = courseService.courseSelect(vo, _id);
		model.addAttribute("detail", cvo);
		return "course/course_detail";
	}
	
	// 나의 코스 목록 진입
	@RequestMapping(value = "course_list.do")
	public String courseList(CourseVO vo, Model model, HttpSession session) {
		// 일반 로그인 회원.  _ 카카오 or 네이버 로그인 회원 id 받는 것도 필요
		String memberId = (String) session.getAttribute("memberId");
		System.out.println("memberId:"+memberId);
		List<CourseVO> list = courseService.viewMycourse(vo, memberId);
		model.addAttribute("list", list);
		return "course/course_list";
	}
	
	// 코스 편집하기 진입
	@RequestMapping(value = "course_edit.do")
	public String courseEdit(CourseVO vo, Model model, HttpSession session, @RequestParam String _id) {
		// 일반 로그인 회원.  _ 카카오 or 네이버 로그인 회원 id 받는 것도 필요
		String memberId = (String) session.getAttribute("memberId");
		System.out.println("memberId:"+memberId);
		System.out.println("course id:"+_id);
		CourseVO cvo = courseService.courseEdit(vo, memberId, _id);
		model.addAttribute("detail", cvo);
		return "course/course_edit";
	}
	
	// 다른 사람이 만든 코스를 내 코스에 담기
	@RequestMapping(value = "addMycourse.do")
	@ResponseBody
	public CourseVO addMycourse(CourseVO vo, HttpSession session, HttpServletRequest req){
		String[] temp = req.getParameterValues("keyword");
		for(String data : temp) {
			System.out.println("data:"+data);
		}
		String memberId = (String) session.getAttribute("memberId");
		vo.setWriter(memberId);
		CourseVO result = courseService.addMycourse(vo, memberId);
		return result;
	}
}
