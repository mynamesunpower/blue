package main.java.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.bson.types.ObjectId;


import main.java.vo.FestivalVO;

public interface FestivalService {

	public List<FestivalVO> test();
	public List<FestivalVO> month(String month);
	public List<FestivalVO> recommand();
	public List<FestivalVO> detail(int tel);
	public List<FestivalVO> months();
	List<FestivalVO> near(ObjectId objectId);
	public ArrayList<HashMap<String, String>> getReviews(String _id);
	public int updateRestaurantReview(ArrayList<HashMap<String, String>> reviews, String _id);
	public List<FestivalVO> search(String word);
	
	//관리자에서
	public FestivalVO insert_festival(FestivalVO vo);
	public FestivalVO modify_festival(FestivalVO vo);
	public FestivalVO delete_festival(FestivalVO vo);
	
	
	
}
