package main.java.model;

import java.util.List;

import org.bson.types.ObjectId;

import main.java.vo.CourseVO;

public interface CourseDAO {
	
	public List<CourseVO> test();
	// 코스 메인 화면 (코스 자랑 마당)
	public List<CourseVO> viewAllcourse();
	// 코스 상세 페이지
	public CourseVO courseSelect(CourseVO vo, String _id);
	// 나의 코스 목록
	public List<CourseVO> viewMycourse(String memberId);
	// 코스 편집 페이지 진입
	public CourseVO courseEdit(CourseVO vo, String memberId, String _id);
	// 내 코스에 담기
	public CourseVO addMycourse(CourseVO vo);
	// 코스 지우기
	public void deleteCourse(String _id);
	// 코스 편집하기
	public void editCourse(CourseVO vo, String _id);
	// 축제, 식당, 숙박을 코스에 담을 때 선택한 코스의 coursePath에 추가 되게.
	public void pushCoursePath(CourseVO vo, ObjectId _id);
	// coursePath에서 빼기
	public void pullCoursePath(String cId, String p_id);
	// 
	public CourseVO cId(String memberId, String cname);
}
