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
		// TODO Auto-generated method stub
		System.out.println("코스 서비스 접근");
		return courseDao.test();
	}

}
