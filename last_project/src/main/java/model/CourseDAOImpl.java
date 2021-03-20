package main.java.model;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.bson.types.ObjectId;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.data.mongodb.core.query.Update;
import org.springframework.stereotype.Repository;

import com.mongodb.BasicDBObject;
import com.mongodb.client.result.UpdateResult;

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
		Query query = new Query(Criteria.where("share").is("YES")); // 공유하기가 YES 상태인 것들만 보여줌.
		return mongoTemplate.find(query, CourseVO.class, course);
	}
	// 코스 상세보기
	@Override
	public CourseVO courseSelect(String _id) {
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
	// 코스 생성
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
	public void editCourse(CourseVO vo, ObjectId _id) {
		System.out.println("editCourse DAO 접근");
		Update update = new Update();
		Query query = new Query(Criteria.where("_id").is(_id));
		
		update.set("courseName",vo.getCourseName());
		update.set("summary",vo.getSummary());
		update.set("keyword", vo.getKeyword());
		update.set("theme", vo.getTheme());
		update.set("schedule", vo.getSchedule());
		update.set("share", vo.getShare());
		
		mongoTemplate.updateMulti(query, update, course);
	}
	// 축제, 식당, 숙박을 코스에 담을 때 선택한 코스의 coursePath에 추가 되게함.
	@Override
	public void pushCoursePath(CourseVO vo, ObjectId _id) {
		System.out.println("pushCoursePath DAO 접근");
		Query query = new Query(Criteria.where("_id").is(_id));
		Update update = new Update();
		List<HashMap<String, Object>> array = new ArrayList<HashMap<String, Object>>();
		array.addAll(vo.getCoursePath());
		update.push("coursePath").each(array);
		/* if문 조건을 줘야 다른 사람이 만든 코스 가져올 때 summary, keyword, theme, schedule을 끌고 오면서,
		summary, keyword, theme, schedule 이라는 값이 없는 그냥 단일 축제, 숙박, 식당을 코스에 추가할 때 null 입력되는거 방지할 수 있음.
		********** 문제는... 키워드, 테마 등을 입력해둔 상태인 내가 만들어놓은 코스에 다른 사람의 코스를 저장시키면 그 사람의 코스에 있던 키워드, 테마 등이 덮어씌여짐. ***********
		*/
		if(vo.getSummary() != null && vo.getKeyword() != null && vo.getTheme() != null && vo.getSchedule() != null) {
			update.set("summary", vo.getSummary());
			update.set("keyword", vo.getKeyword());
			update.set("theme", vo.getTheme());
			update.set("schedule", vo.getSchedule());
		}
		mongoTemplate.updateFirst(query, update, course);
	}
	// coursePath에서 빼기
	@Override
	public void pullCoursePath(String cId, String p_id) {
		System.out.println("pullCoursePath DAO 접근");
		Query query = new Query().addCriteria(Criteria.where("_id").is(new ObjectId(cId)));
		Update update = new Update();
		update.pull("coursePath", new BasicDBObject("p_id", p_id));
		mongoTemplate.updateFirst(query, update, course);
	}
	// 코스에 담는 창에서, 방금 생성한 코스 document의 _id를 가져와서 히든 인풋을 하나 만들어주기 위해 필요
	@Override
	public CourseVO cId(String memberId, String cname) {
		System.out.println("cId DAO 접근");
		Query query = new Query(Criteria.where("writer").is(memberId));  // 조건1
		query.addCriteria(Criteria.where("courseName").is(cname));  // 조건2
		return mongoTemplate.findOne(query, CourseVO.class, course);
	}
	// _id에 있는 reviews ArrayList 가져오기.
	@Override
	public ArrayList<HashMap<String, String>> getReviews(String _id) {
		System.out.println("getReviews DAO 접근");
		CourseVO vo = mongoTemplate.findById(_id, CourseVO.class, course);
		return vo.getReviews();
	}
	//	ArrayList reviews에 새 review를 담아 업데이트.
	@Override
	public int updateCourseReview(ArrayList<HashMap<String, String>> reviews, String _id) {
		System.out.println("updateCourseReview DAO 접근");
		
		Query query = new Query(Criteria.where("_id").is(_id));
		
		Update update = new Update();
		update.set("reviews", reviews);
		
		UpdateResult result = mongoTemplate.updateFirst(query, update, course);
		
		return (int)result.getModifiedCount();
	}
	
	
}
