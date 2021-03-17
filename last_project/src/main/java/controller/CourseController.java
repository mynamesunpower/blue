package main.java.controller;

import java.util.ArrayList;
import java.util.Base64;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.bson.types.Binary;
import org.bson.types.ObjectId;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.google.gson.reflect.TypeToken;

import main.java.service.CourseService;
import main.java.vo.CourseVO;
import main.java.vo.FestivalVO;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

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
	public String courseDetail(CourseVO vo, Model model, HttpSession session, @RequestParam String _id) {
		System.out.println("course id:"+_id);
		CourseVO cvo = courseService.courseSelect(vo, _id);
		model.addAttribute("detail", cvo);
		
		String memberId = (String) session.getAttribute("memberId");
		List<CourseVO> list = courseService.viewMycourse(memberId);
		// 코스 데이터가 없는 유저의 경우 list에 아무것도 없기 때문에 model.addAttribute("list", list); 를 해줄수가 없음. 그래서 list가 null이 아닌 경우에만 model.addAttribute("list", list);를 해주게 함.
		if (list != null) {
			model.addAttribute("list", list);
		}
		return "course/course_detail";
	}
	
	// 나의 코스 목록 진입
	@RequestMapping(value = "course_list.do")
	public String courseList(Model model, HttpSession session) {
		// 일반 로그인 회원.  _ 카카오 or 네이버 로그인 회원 id 받는 것도 필요
		String memberId = (String) session.getAttribute("memberId");
		System.out.println("memberId:"+memberId);
		List<CourseVO> list = courseService.viewMycourse(memberId);
		/* 왜 이거 안해도 나오지???
		for (CourseVO vo : list) {
			ArrayList<String> imageList = new ArrayList<String>();
			for(Binary img : vo.getImage()) {
				String image = Base64.getEncoder().encodeToString(img.getData());
				imageList.add(image);
			}
			vo.setCoursePath(imageList); // 여길 어떻게 해줘야 할까
		}
		*/
		model.addAttribute("list", list);
		return "course/course_list";
	}
	
	// 코스 편집하기 페이지 진입
	@RequestMapping(value = "course_edit.do")
	public String courseEditpage(CourseVO vo, Model model, HttpSession session, @RequestParam String _id) {
		// 일반 로그인 회원.  _ 카카오 or 네이버 로그인 회원 id 받는 것도 필요   __ 회원 id 받는게 필요한가 ? 나중에 점검.
		String memberId = (String) session.getAttribute("memberId");
		System.out.println("memberId:"+memberId);
		System.out.println("course id:"+_id);
		CourseVO cvo = courseService.courseEdit(vo, memberId, _id);
		model.addAttribute("detail", cvo);
		return "course/course_edit";
	}
	
	// 코스 만들기
	@RequestMapping(value = "addMycourse.do", method = RequestMethod.POST)
	@ResponseBody
	public String addMycourse(HttpSession session, /*HttpServletRequest req, */@RequestBody String jsonData, HttpServletResponse response){
		// 접속 유저 id
		String memberId = (String) session.getAttribute("memberId");
		System.out.println("id===="+memberId);
		// 키워드 가져오는거 확인용
		/*
		String[] temp = req.getParameterValues("keyword");
		for(String keyword : temp) {
			System.out.println("keyword:"+keyword);
		}
		*/
		try {
			ObjectMapper mapper = new ObjectMapper();
			CourseVO vo = (CourseVO)mapper.readValue(jsonData, new TypeReference<CourseVO>() {});
			courseService.addMycourse(vo);
			System.out.println("됐어!");
		} catch(Exception e) {
			System.out.println("error:"+e);
		}
		response.setContentType("text/html; charset=UTF-8");
		
		return null;
	}
	// 코스 경로 추가
	@RequestMapping(value = "pushCoursePath.do", method = RequestMethod.POST)
	@ResponseBody
	public String pushCoursePath(HttpSession session, @RequestBody String jsonData, HttpServletResponse response){
		// 접속 유저 id
		String memberId = (String) session.getAttribute("memberId");
		System.out.println("id===="+memberId);
		try {
			ObjectMapper mapper = new ObjectMapper();
			CourseVO vo = (CourseVO)mapper.readValue(jsonData, new TypeReference<CourseVO>() {});
			System.out.println(">>>>>>>>>>>>>>>>>>>!!!!:"+vo.getCoursePath());
			courseService.pushCoursePath(vo, vo.get_id());
			System.out.println("됐어!");
		} catch(Exception e) {
			System.out.println("error:"+e);
		}
		response.setContentType("text/html; charset=UTF-8");
		
		return null;
	}
	
	// 코스 경로에서 빼기
	@RequestMapping(value = "pullCoursePath.do", method = RequestMethod.POST)
	@ResponseBody
	public String pullCoursePath(@RequestParam String _id, HttpSession session, @RequestBody String cId) {
		String memberId = (String) session.getAttribute("memberId");		
		System.out.println(">>>>>>>>>>>>>>>>>"+ cId);
		String test = cId.split("&")[1].replace("=", "");
		System.out.println(test);
		System.out.println("<<<<<<<<<<<<<<<<<"+_id);
		courseService.pullCoursePath(_id, test);
		return "redirect:course_edit.do?memberId="+memberId+"&_id="+test;
	}
	
	// 코스 지우기
	@RequestMapping(value = "deleteCourse.do")
	public String deleteCourse(@RequestParam String _id, HttpSession session) {
		// 접속 유저 id
		String memberId = (String) session.getAttribute("memberId");
		System.out.println("id===="+memberId);
		
		courseService.deleteCourse(_id);
		return "redirect:course_list.do?memberId="+memberId;
	}
	
	// 코스 편집
	@RequestMapping(value = "editCourse.do")
	@ResponseBody
	public String editCourse(@RequestBody CourseVO vo, @RequestParam String _id) {
		courseService.editCourse(vo, _id);
		return "course/course_list";
	}
	
	//  
	@RequestMapping(value = "cId.do", method = RequestMethod.POST)
	@ResponseBody
	public String cId(CourseVO vo) {
		CourseVO cvo = courseService.cId(vo.getWriter(), vo.getCourseName());
		return cvo.get_id().toString();
	}	
}
