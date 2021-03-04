package main.java.vo;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.bson.types.Binary;
import org.bson.types.ObjectId;
import org.springframework.data.annotation.Id;

public class FestivalVO {

	@Id
	private ObjectId _id;
	
	private String host;
	private String festival_name;
	private String start_date;
	private String end_date;
	private String address;
	private String fee;
	private String tel;
	private String homepage;
	//private ArrayList<Binary> image;
	private ArrayList<HashMap<String, String>> review;
	
	
	public ObjectId get_id() {
		return _id;
	}
	public void set_id(ObjectId _id) {
		this._id = _id;
	}
	public String getHost() {
		return host;
	}
	public void setHost(String host) {
		this.host = host;
	}
	public String getFestival_name() {
		return festival_name;
	}
	public void setFestival_name(String festival_name) {
		this.festival_name = festival_name;
	}
	public String getStart_date() {
		return start_date;
	}
	public void setStart_date(String start_date) {
		this.start_date = start_date;
	}
	public String getEnd_date() {
		return end_date;
	}
	public void setEnd_date(String end_date) {
		this.end_date = end_date;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getFee() {
		return fee;
	}
	public void setFee(String fee) {
		this.fee = fee;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getHomepage() {
		return homepage;
	}
	public void setHomepage(String homepage) {
		this.homepage = homepage;
	}
//	public ArrayList<Binary> getImage() {
//		return image;
//	}
//	public void setImage(ArrayList<Binary> image) {
//		this.image = image;
//	}
	public ArrayList<HashMap<String, String>> getReview() {
		return review;
	}
	public void setReview(ArrayList<HashMap<String, String>> review) {
		this.review = review;
	}
	
	
}
