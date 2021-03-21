package main.java.vo;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.bson.types.Binary;
import org.bson.types.ObjectId;
import org.springframework.data.annotation.Id;

public class CourseVO {
	
	@Id
	private ObjectId _id;
	
	private String writer;     // 코스 작성자 id       // = 유저 id
	private String courseName; // 코스명
	private String summary;    // 코스 설명
	private ArrayList<String> keyword; // #태그(키워드)
	private int distance;   // 코스 총 거리           // 코스 경로의 주소로 1번에서 2번 장소 거리 + 2번에서 3번 장소 거리 + ... + = 값 
	private String schedule;   // 일정
	private String theme;      // 테마
	private ArrayList<Binary> image; // 지워도 될 듯
	private ArrayList<HashMap<String, Object>> coursePath; // 코스 경로
	private HashMap<String, String> review;
	private ArrayList<HashMap<String, String>> reviews; // 리뷰
	private String share;
	
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
	public ArrayList<Binary> getImage() {
		return image;
	}
	public void setImage(ArrayList<Binary> image) {
		this.image = image;
	}
	public ArrayList<HashMap<String, Object>> getCoursePath() {
		return coursePath;
	}
	public void setCoursePath(ArrayList<HashMap<String, Object>> coursePath) {
		this.coursePath = coursePath;
	}
	public HashMap<String, String> getReview() {
		return review;
	}
	public void setReview(HashMap<String, String> review) {
		this.review = review;
	}
	public ArrayList<HashMap<String, String>> getReviews() {
		return reviews;
	}
	public void setReviews(ArrayList<HashMap<String, String>> reviews) {
		this.reviews = reviews;
	}
	public String getShare() {
		return share;
	}
	public void setShare(String share) {
		this.share = share;
	}
	
}
