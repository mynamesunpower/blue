package main.java.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.data.mongodb.core.query.Update;
import org.springframework.stereotype.Repository;

import com.mongodb.client.result.DeleteResult;

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
	// 코스 메인 (코스 자랑 마당 진입)
	@Override
	public List<CourseVO> viewAllcourse() {
		System.out.println("viewAllcourse DAO 접근");
		return mongoTemplate.findAll(CourseVO.class, course);
	}
	// 코스 상세보기
	@Override
	public CourseVO courseSelect(CourseVO vo, String _id) {
		System.out.println("viewOnecourse DAO 접근");
		Query query = new Query(Criteria.where("_id").is(_id));
		return mongoTemplate.findOne(query, CourseVO.class, course);
	}
	// 나의 코스 목록
	@Override
	public List<CourseVO> viewMycourse(String memberId) {
		System.out.println("viewMycourse DAO 접근");
		Query query = new Query(Criteria.where("writer").is(memberId));
		return mongoTemplate.find(query, CourseVO.class, course);
	}
	// 코스 편집하기 페이지 진입
	@Override
	public CourseVO courseEdit(CourseVO vo, String memberId, String _id) {
		System.out.println("courseEdit DAO 접근");
		Query query = new Query(Criteria.where("writer").is(memberId));  // 조건1
		query.addCriteria(Criteria.where("_id").is(_id));  // 조건2
		return mongoTemplate.findOne(query, CourseVO.class, course);
	}
	// 내 코스에 담기
	@Override
	public CourseVO addMycourse(CourseVO vo) {
		System.out.println("addMycourse DAO 접근");
		return mongoTemplate.insert(vo, course);
	}
	// 코스 삭제
	@Override
	public void deleteCourse(String _id) {
		System.out.println("deleteCourse DAO 접근");
		Criteria criteria = new Criteria("_id");
		criteria.is(_id);
		Query query = new Query(criteria);
		mongoTemplate.remove(query, course);
	}
	// 코스 편집
	@Override
	public void editCourse(CourseVO vo, String _id) {
		System.out.println("editCourse DAO 접근");
		Update update = new Update();
		Query query = new Query(Criteria.where("courseName").is(_id));
		
		update.set("courseName",vo.getCourseName());
		update.set("summary",vo.getSummary());
		
		mongoTemplate.updateMulti(query, update, course);
	}
	
	
}
