package main.java.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.bson.types.ObjectId;

import main.java.vo.AccomVO;
import main.java.vo.RestaurantVO;

public interface RestaurantService {

	public List<RestaurantVO> selectAll();

	public RestaurantVO selectOne(String _id);

	public int updateRestaurantReview(ArrayList<HashMap<String, String>> reviews, String _id);

	public ArrayList<HashMap<String, String>> getReviews(String _id);
	
	public List<RestaurantVO> selectPageList(int pageNumber);

	public int getTotalSize();

	public List<HashMap> getGroupCategory();

	public List<RestaurantVO> getCategoryData(String word, int pageNumber);

	public List<RestaurantVO> selectnear(ObjectId objectId);
	//관리자에서
	public RestaurantVO insert_restaurant(RestaurantVO vo);
	public RestaurantVO modify_restaurant(RestaurantVO vo);
	public RestaurantVO delete_restaurant(RestaurantVO vo);
}
