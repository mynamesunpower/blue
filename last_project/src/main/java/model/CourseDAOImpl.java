package main.java.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.stereotype.Repository;

import main.java.vo.CourseVO;

@Repository("courseDAO")
public class CourseDAOImpl implements CourseDAO {
	
	@Autowired
	private MongoTemplate mongoTemplate;
	
	private final String course = "course"; // Collection_name

	@Override
	public List<CourseVO> test() {
		System.out.println("코스 다오 접근");
		return mongoTemplate.findAll(CourseVO.class, course);
	}

}
