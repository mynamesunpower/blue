package main.java.vo;

import java.util.ArrayList;
import java.util.HashMap;

import org.bson.types.Binary;
import org.bson.types.ObjectId;
import org.springframework.data.annotation.Id;

public class RestaurantVO {

	@Id
	private ObjectId _id;

	private String title;
	private String open_time;
	private String close_time;
	private String rest_day;
	private String address;
	private String tel;
	private Double latitude;
	private Double longitude;
	private String category;

	private ArrayList<Binary> image;
	private ArrayList<String> images;
	private HashMap<String, String> review;
	private ArrayList<HashMap<String, String>> reviews;

	private int averageScore;
	private int views;

	public int getViews() {
		return views;
	}

	public void setViews(int views) {
		this.views = views;
	}

	public int getAverageScore() {
		return averageScore;
	}

	public void setAverageScore(int averageScore) {
		this.averageScore = averageScore;
	}

	private Double range;

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public ObjectId get_id() {
		return _id;
	}

	public void set_id(ObjectId _id) {
		this._id = _id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getOpen_time() {
		return open_time;
	}

	public void setOpen_time(String open_time) {
		this.open_time = open_time;
	}

	public String getClose_time() {
		return close_time;
	}

	public void setClose_time(String close_time) {
		this.close_time = close_time;
	}

	public String getRest_day() {
		return rest_day;
	}

	public void setRest_day(String rest_day) {
		this.rest_day = rest_day;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public Double getLatitude() {
		return latitude;
	}

	public void setLatitude(Double latitude) {
		this.latitude = latitude;
	}

	public Double getLongitude() {
		return longitude;
	}

	public void setLongitude(Double longitude) {
		this.longitude = longitude;
	}

	public ArrayList<Binary> getImage() {
		return image;
	}

	public void setImage(ArrayList<Binary> image) {
		this.image = image;
	}

	public ArrayList<String> getImages() {
		return images;
	}

	public void setImages(ArrayList<String> images) {
		this.images = images;
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

	public Double getRange() {
		return range;
	}

	public void setRange(Double range) {
		this.range = range;
	}

}
