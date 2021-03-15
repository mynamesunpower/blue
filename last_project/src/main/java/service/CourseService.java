package main.java.service;

import java.util.List;

import main.java.vo.CourseVO;

public interface CourseService {
	
	public List<CourseVO> test();
	
	public List<CourseVO> viewAllcourse();
	
	public CourseVO courseSelect(CourseVO vo, String _id);
	
	public List<CourseVO> viewMycourse(String memberId);
	
	public CourseVO courseEdit(CourseVO vo, String memberId, String _id);
	
	public CourseVO addMycourse(CourseVO vo);
	
	public void deleteCourse(String _id);
	
	public void editCourse(CourseVO vo, String _id);
}
