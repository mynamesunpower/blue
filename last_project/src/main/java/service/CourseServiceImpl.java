package main.java.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import main.java.model.CourseDAO;
import main.java.vo.CourseVO;

@Service("courseService")
public class CourseServiceImpl implements CourseService {

	@Autowired
	private CourseDAO courseDao;
	
	@Override
	public List<CourseVO> test() {
		System.out.println("test 서비스 접근");
		return courseDao.test();
	}

	@Override
	public List<CourseVO> viewAllcourse() {
		System.out.println("viewAllcourse 서비스 접근");
		return courseDao.viewAllcourse();
	}

	@Override
	public CourseVO courseSelect(CourseVO vo, String _id) {
		System.out.println("viewOnecourse 서비스 접근");
		return courseDao.courseSelect(vo, _id);
	}

	@Override
	public List<CourseVO> viewMycourse(CourseVO vo, String memberId) {
		System.out.println("viewMycourse 서비스 접근");
		return courseDao.viewMycourse(vo, memberId);
	}

	@Override
	public CourseVO courseEdit(CourseVO vo, String memberId, String _id) {
		System.out.println("courseEdit 서비스 접근");
		return courseDao.courseEdit(vo, memberId, _id);
	}

	@Override
	public CourseVO addMycourse(CourseVO vo) {
		System.out.println("addMycourse 서비스 접근");
		return courseDao.addMycourse(vo);
	}

	@Override
	public void deleteCourse(String _id) {
		System.out.println("deleteCourse 서비스 접근");
		courseDao.deleteCourse(_id);
	}

	@Override
	public void editCourse(CourseVO vo, String _id) {
		System.out.println("editCourse 서비스 접근");
		courseDao.editCourse(vo, _id);
	}
}
