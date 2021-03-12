package main.java.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Repository;

import main.java.vo.CourseVO;

@Repository("courseDAO")
public class CourseDAOImpl implements CourseDAO {
	
	@Autowired
	private MongoTemplate mongoTemplate;
	
	private final String course = "course"; // Collection_name
	
	@Override
	public List<CourseVO> test() {
		System.out.println("test DAO 접근");
		return mongoTemplate.findAll(CourseVO.class, course);
	}

	@Override
	public List<CourseVO> viewAllcourse() {
		System.out.println("viewAllcourse DAO 접근");
		return mongoTemplate.findAll(CourseVO.class, course);
	}

	@Override
	public CourseVO courseSelect(CourseVO vo, String _id) {
		System.out.println("viewOnecourse DAO 접근");
		Query query = new Query(Criteria.where("_id").is(_id));
		return mongoTemplate.findOne(query, CourseVO.class, course);
	}

	@Override
	public List<CourseVO> viewMycourse(CourseVO vo, String memberId) {
		System.out.println("viewMycourse DAO 접근");
		Query query = new Query(Criteria.where("writer").is(memberId));
		return mongoTemplate.find(query, CourseVO.class, course);
	}

	@Override
	public CourseVO courseEdit(CourseVO vo, String memberId, String _id) {
		System.out.println("courseEdit DAO 접근");
		Query query = new Query(Criteria.where("writer").is(memberId));  // 조건1
		query.addCriteria(Criteria.where("_id").is(_id));  // 조건2
		return mongoTemplate.findOne(query, CourseVO.class, course);
	}

	@Override
	public CourseVO addMycourse(CourseVO vo) {
		System.out.println("addMycourse DAO 접근");		
		return mongoTemplate.insert(vo, course);
	}
}
