package main.java.model;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.bson.types.ObjectId;

import main.java.vo.AccomVO;
import main.java.vo.RestaurantVO;

public interface AccomDAO {

	//숙소 리스트 조회
	public List<AccomVO> test();
	
	//숙소 상세
	public AccomVO detail(String _id);

	public List<AccomVO> selectPageList(int pageNumber);

	public int updateAccomReview(ArrayList<HashMap<String, String>> reviews, String _id);

	public ArrayList<HashMap<String, String>> getReviews(String _id);
}
