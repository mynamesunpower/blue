package main.java.service;

import java.util.List;

import main.java.vo.CourseVO;

public interface CourseService {
	
	public List<CourseVO> viewAllcourse();
	
	public CourseVO courseSelect(CourseVO vo, String _id);
}
