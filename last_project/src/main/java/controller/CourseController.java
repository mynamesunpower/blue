package main.java.controller;

import java.util.ArrayList;
import java.util.Base64;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.bson.types.Binary;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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
	@PostMapping("addMycourse.do")
	@ResponseBody
	public CourseVO addMycourse(CourseVO vo, HttpSession session, HttpServletRequest req/*, @RequestBody String jsonData*/){
		// 접속 유저 id
		String memberId = (String) session.getAttribute("memberId");
		System.out.println("id:"+memberId);
		// 키워드 가져오는거 확인용
		String[] temp = req.getParameterValues("keyword");
		for(String keyword : temp) {
			System.out.println("keyword:"+keyword);
		}
		
		/*List<Map<String, Object>> resultMap = new ArrayList<Map<String,Object>>();
		resultMap = JSONArray.fromObject(jsonData);
		
		for (Map<String, Object> map : resultMap) {
			System.out.println(map.get("title") + "/" + map.get("address"));
		}
		*/
		CourseVO cvo = courseService.addMycourse(vo);
		return cvo;		
	}
		
	// 축제_ 코스에 담기
	@PostMapping("addMycourse_festival.do")
	@ResponseBody
	public CourseVO addFestival(CourseVO vo, @RequestBody String jsonData) {
		
		/*
		Gson gson = new Gson();
		List<Map<String, Object>> myPushList = null;
		String jsonArray = jsonData;
		myPushList = gson.fromJson(jsonArray, new TypeToken<List<Map<String, Object>>>() {}.getType());
		
		System.out.println(myPushList.toString());
		*/
		/*
		Map<String, Object> result = new HashMap<String, Object>();
		 
	    Map<String, Object> paramMap = new HashMap<String, Object>();
		
		JSONArray array = JSONArray.fromObject(jsonData);
		List<Map<String, Object>> resendList = new ArrayList<Map<String, Object>>();
		for(int i=0;i<array.size();i++) {
			JSONObject obj = (JSONObject) array.get(i);
			
			Map<String, Object> resendMap = new HashMap<String, Object>();
			resendMap.put("title", obj.get("title"));
			resendMap.put("address", obj.get("address"));
			resendMap.put("startDate", obj.get("startDate"));
			resendMap.put("endDate", obj.get("endDate"));
			resendMap.put("fee", obj.get("fee"));
			resendMap.put("festel", obj.get("festel"));
			resendMap.put("host", obj.get("host"));
			
			resendList.add(resendMap);
		}
		vo.setCoursePath(resendList);
		*/
		/*
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("writer", vo.getWriter());
		map.put("courseName", vo.getCourseName());
		map.put("", vo.get)
		*/
		CourseVO cvo = courseService.addMycourse(vo);
		return cvo;
	}
	
	// 코스 지우기  _ a 태그에 .do 를 걸어서 그런가 return이 안 먹힘. 
	@RequestMapping(value = "deleteCourse.do")
	public String deleteCourse(@RequestParam String _id) {
		courseService.deleteCourse(_id);
		return "course/course_list";
	}
	
	// 코스 편집
	@RequestMapping(value = "editCourse.do")
	@ResponseBody
	public String editCourse(@RequestBody CourseVO vo, @RequestParam String _id) {
		courseService.editCourse(vo, _id);
		return "course/course_list";
	}
}
