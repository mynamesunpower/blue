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
}
