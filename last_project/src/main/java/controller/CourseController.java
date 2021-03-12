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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import main.java.service.CourseService;
import main.java.vo.CourseVO;


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
	
	// 다른 사람이 만든 코스를 내 코스에 담기 ( 경로 제외 )
	@RequestMapping(value = "addMycourse.do", method = RequestMethod.POST)
	@ResponseBody
	public CourseVO addMycourse(CourseVO vo, HttpSession session, HttpServletRequest req){
		// 접속 유저 id
		String memberId = (String) session.getAttribute("memberId");
		System.out.println("id:"+memberId);
		// 키워드 가져오는거 확인용
		
		String[] temp = req.getParameterValues("keyword");
		for(String keyword : temp) {
			System.out.println("keyword:"+keyword);
		}				
		
		vo.setWriter(memberId);
		
		CourseVO cvo = courseService.addMycourse(vo);
		return cvo;		
	}
	
	// 코스 경로만 넘겨보자 _ 안되네 시벌?
	@RequestMapping(value = "addMycourse_path.do", method = RequestMethod.POST)
	public @ResponseBody CourseVO coursePathResend(CourseVO vo, @RequestParam String coursePath) {
		// 코스 경로 가져오는 작업 시작
//		Map<String, Object> result = new HashMap<String, Object>();
//		Map<String, String> result = new HashMap<String, String>();
		
//		Map<String, Object> paramMap = new HashMap<String, Object>();
//		ArrayList<HashMap<String, String>> paramMap = new ArrayList<HashMap<String,String>>();
//		ArrayList<HashMap<String, Object>> paramMap = new ArrayList<HashMap<String,Object>>();
		
		//직렬화 시켜 가져온 오브젝트 배열을 JSONArray 형식으로 바꿔준다.
		JSONArray array = JSONArray.fromObject(coursePath);
		
//		List<Map<String, Object>> resendList = new ArrayList<Map<String, Object>>();
//		ArrayList<HashMap<String, String>> resendList = new ArrayList<HashMap<String,String>>();
		ArrayList<HashMap<String, Object>> resendList = new ArrayList<HashMap<String,Object>>();
		
		for(int i=0 ; i<array.size() ; i++) {
			System.out.println("배열 크기:"+array.size());
			//JSONArray 형태의 값을 가져와 JSONObject 로 풀어준다.
			JSONObject obj = (JSONObject) array.get(i);
			
//			Map<String, Object> resendMap = new HashMap<String, Object>();
//			HashMap<String, String> resendMap = new HashMap<String, String>();
			HashMap<String, Object> resendMap = new HashMap<String, Object>();
			
			resendMap.put("title", obj.get("title"));
			System.out.println("타이틀:" + obj.get("title"));
	        resendMap.put("address", obj.get("address"));
	        resendMap.put("tel", obj.get("tel"));
	        resendMap.put("latitude", obj.get("latitude"));
	        resendMap.put("longitude", obj.get("longitude"));
	        resendMap.put("image", obj.get("image"));
	            
	        resendList.add(resendMap);
	    }
	 
//	    paramMap.put("resendList", resendList);
//	    paramMap.addAll(resendList);
	    
	    vo.setCoursePath(resendList);	    	    		
	    CourseVO cvo = courseService.addMycourse(vo);
	    return cvo;
	}	
}
