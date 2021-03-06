package main.java.model;

import java.util.List;

import main.java.vo.CourseVO;

public interface CourseDAO {
	
	public List<CourseVO> viewAllcourse();
	
	public CourseVO courseSelect(CourseVO vo, String _id);

}
