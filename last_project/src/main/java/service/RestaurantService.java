package main.java.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import main.java.vo.RestaurantVO;

public interface RestaurantService {

	public List<RestaurantVO> selectAll();

	public RestaurantVO selectOne(String _id);

	public int updateRestaurantReview(ArrayList<HashMap<String, String>> reviews, String _id);

	public ArrayList<HashMap<String, String>> getReviews(String _id);
	
}
