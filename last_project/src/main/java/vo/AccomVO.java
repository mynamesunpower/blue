package main.java.vo;

import java.util.ArrayList;
import java.util.HashMap;

import org.bson.types.Binary;
import org.bson.types.ObjectId;
import org.springframework.data.annotation.Id;

public class AccomVO {
	
	@Id
	private ObjectId _id;
	
	private String title;
	private String address;
	private String tel;
	private String checkin;
	private String checkout;
	private String booking_url;
	private ArrayList<String> images;
	private ArrayList<Binary> image;
	

	private ArrayList<HashMap<String, String>> review;
	
	
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
	
	public ArrayList<HashMap<String, String>> getReview() {
		return review;
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
	public void setReview(ArrayList<HashMap<String, String>> review) {
		this.review = review;
	}
}
