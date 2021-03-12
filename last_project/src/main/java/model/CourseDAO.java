package main.java.model;

import java.util.List;

import main.java.vo.CourseVO;

public interface CourseDAO {
	
	public List<CourseVO> test();
	
	public List<CourseVO> viewAllcourse();
	
	public CourseVO courseSelect(CourseVO vo, String _id);
	
	public List<CourseVO> viewMycourse(CourseVO vo, String memberId);
	
	public CourseVO courseEdit(CourseVO vo, String memberId, String _id);
	
	public CourseVO addMycourse(CourseVO vo);
	
}
