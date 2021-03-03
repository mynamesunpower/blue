package main.java.vo;

public class MateVO {
	private String id;
	private String nickname;
	private String photo;
	private double photo_score;
	private double profile_score;
	private int cash;
	private String gender;
	private String interest;
	private String introduce;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public double getPhoto_score() {
		return photo_score;
	}
	public void setPhoto_score(double photo_score) {
		this.photo_score = photo_score;
	}
	public double getProfile_score() {
		return profile_score;
	}
	public void setProfile_score(double profile_score) {
		this.profile_score = profile_score;
	}
	public int getCash() {
		return cash;
	}
	public void setCash(int cash) {
		this.cash = cash;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getInterest() {
		return interest;
	}
	public void setInterest(String interest) {
		this.interest = interest;
	}
	public String getIntroduce() {
		return introduce;
	}
	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}
}
