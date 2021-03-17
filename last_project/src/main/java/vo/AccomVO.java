package main.java.vo;

import java.util.ArrayList;
import java.util.HashMap;

import org.bson.types.Binary;
import org.bson.types.ObjectId;
import org.springframework.data.annotation.Id;

public class AccomVO {

	@Id
	private ObjectId _id;


	private String check_in;
	private String check_out;
	private String homepage;
	private String parking;
	private double latitude;
	private double longitude;
	
	private String title;
	private String address;
	private String tel;
	private String checkin;
	private String checkout;
	private String booking_url;
	private ArrayList<String> images;
	private ArrayList<Binary> image;
	private ArrayList<HashMap<String, String>> reviews;
	private HashMap<String, String> review;
	private Double range;

	private int views;
	
	public int getViews() {
		return views;
	}
	public void setViews(int views) {
		this.views = views;
	}
	public String getCheck_in() {
		return check_in;
	}
	public void setCheck_in(String check_in) {
		this.check_in = check_in;
	}
	public String getCheck_out() {
		return check_out;
	}
	public void setCheck_out(String check_out) {
		this.check_out = check_out;
	}
	public String getHomepage() {
		return homepage;
	}
	public void setHomepage(String homepage) {
		this.homepage = homepage;
	}
	public String getParking() {
		return parking;
	}
	public void setParking(String parking) {
		this.parking = parking;
	}
	public ArrayList<HashMap<String, String>> getReviews() {
		return reviews;
	}
	public void setReviews(ArrayList<HashMap<String, String>> reviews) {
		this.reviews = reviews;
	}
	public HashMap<String, String> getReview() {
		return review;
	}
	public void setReview(HashMap<String, String> review) {
		this.review = review;
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

	
	
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	
	
	public String getCheckin() {
		return checkin;
	}
	public void setCheckin(String checkin) {
		this.checkin = checkin;
	}
	public String getCheckout() {
		return checkout;
	}
	public void setCheckout(String checkout) {
		this.checkout = checkout;
	}
	
	
	public String getBooking_url() {
		return booking_url;
	}
	public void setBooking_url(String booking_url) {
		this.booking_url = booking_url;
	}
	
	public ArrayList<String> getImages() {
		return images;
	}
	public void setImages(ArrayList<String> images) {
		this.images = images;
	}
	public ArrayList<Binary> getImage() {
		return image;
	}
	public void setImage(ArrayList<Binary> image) {
		this.image = image;
	}

	public double getLatitude() {
		return latitude;
	}
	public void setLatitude(double latitude) {
		this.latitude = latitude;
	}
	public double getLongitude() {
		return longitude;
	}
	public void setLongitude(double longitude) {
		this.longitude = longitude;
	}
	public Double getRange() {
		return range;
	}
	public void setRange(Double range) {
		this.range = range;
	}
	
	


}
