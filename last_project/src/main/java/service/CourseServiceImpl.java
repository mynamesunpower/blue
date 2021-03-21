package main.java.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.bson.types.ObjectId;
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
	public CourseVO courseSelect(String _id) {
		System.out.println("viewOnecourse 서비스 접근");
		return courseDao.courseSelect(_id);
	}

	@Override
	public List<CourseVO> viewMycourse(String memberId) {
		System.out.println("viewMycourse 서비스 접근");
		return courseDao.viewMycourse(memberId);
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
	public void editCourse(CourseVO vo, ObjectId _id) {
		System.out.println("editCourse 서비스 접근");
		courseDao.editCourse(vo, _id);
	}
	@Override
	public void pushCoursePath(CourseVO vo, ObjectId _id) {
		System.out.println("pushCoursePath 서비스 접근");
		courseDao.pushCoursePath(vo, _id);
	}
	@Override
	public void pullCoursePath(String cId, String p_id) {
		System.out.println("pullCoursePath 서비스 접근");
		courseDao.pullCoursePath(cId, p_id);
	}
	@Override
	public CourseVO cId(String memberId, String cname) {
		System.out.println("cId 서비스 접근");
		return courseDao.cId(memberId, cname);
	}

	@Override
	public ArrayList<HashMap<String, String>> getReviews(String _id) {
		System.out.println("getReviews 서비스 접근");
		return courseDao.getReviews(_id);
	}

	@Override
	public int updateCourseReview(ArrayList<HashMap<String, String>> reviews, String _id) {
		System.out.println("updateCourseReview 서비스 접근");
		return courseDao.updateCourseReview(reviews, _id);
	}

	
}
