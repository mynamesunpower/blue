package main.java.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminCourseController {

	@RequestMapping(value="admin/admin_course.do")
	public String helloAdminCourse() {
		System.out.println("관리자 ---> 코스 관리");
		
		return "admin/admin_course";
	}
	
	@RequestMapping(value="admin/admin_course_statistic.do")
	public String helloAdminStatistic() {
		System.out.println("관리자 ---> 통계");
		
		return "admin/admin_course_statistic";
	}
	
}
