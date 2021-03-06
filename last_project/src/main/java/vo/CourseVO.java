package main.java.vo;

import java.util.ArrayList;
import java.util.HashMap;
import org.bson.types.Binary;
import org.bson.types.ObjectId;
import org.springframework.data.annotation.Id;

public class CourseVO {
	
	@Id
	private ObjectId _id;
	
	private String writer;     // 코스 작성자 id
	private String courseName; // 코스명
	private String district;   // 코스 대표 지역
	private String mainImage;  // 코스 대표 이미지      // 일단은 스트링으로..
	private String summary;    // 코스 설명
	private ArrayList<String> keyword; // #태그(키워드)
	private int distance;   // 코스 총 거리
	private String schedule;   // 일정
	private String theme;      // 테마
	private ArrayList<HashMap<String, String>> coursePath; // 코스 경로
	private ArrayList<HashMap<String, String>> review; // 리뷰

	public ObjectId get_id() {
		return _id;
	}
	public void set_id(ObjectId _id) {
		this._id = _id;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getCourseName() {
		return courseName;
	}
	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}
	public String getDistrict() {
		return district;
	}
	public void setDistrict(String district) {
		this.district = district;
	}
	public String getMainImage() {
		return mainImage;
	}
	public void setMainImage(String mainImage) {
		this.mainImage = mainImage;
	}
	public String getSummary() {
		return summary;
	}
	public void setSummary(String summary) {
		this.summary = summary;
	}
	public ArrayList<String> getKeyword() {
		return keyword;
	}
	public void setKeyword(ArrayList<String> keyword) {
		this.keyword = keyword;
	}
	public int getDistance() {
		return distance;
	}
	public void setDistance(int distance) {
		this.distance = distance;
	}
	public String getSchedule() {
		return schedule;
	}
	public void setSchedule(String schedule) {
		this.schedule = schedule;
	}
	public String getTheme() {
		return theme;
	}
	public void setTheme(String theme) {
		this.theme = theme;
	}
	public ArrayList<HashMap<String, String>> getCoursePath() {
		return coursePath;
	}
	public void setCoursePath(ArrayList<HashMap<String, String>> coursePath) {
		this.coursePath = coursePath;
	}
	public ArrayList<HashMap<String, String>> getReview() {
		return review;
	}
	public void setReview(ArrayList<HashMap<String, String>> review) {
		this.review = review;
	}	
}
