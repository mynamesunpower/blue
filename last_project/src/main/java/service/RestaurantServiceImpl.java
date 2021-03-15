package main.java.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.bson.types.ObjectId;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import main.java.model.RestaurantDAOImpl;
import main.java.vo.RestaurantVO;

@Service("restaurantService")
public class RestaurantServiceImpl implements RestaurantService {

	@Autowired
	private RestaurantDAOImpl restaurantDAO;

	@Override
	public List<RestaurantVO> selectAll() {
		return restaurantDAO.selectAll();
	}
	
	@Override
	public int getTotalSize() {
		return restaurantDAO.selectAll().size();
	}
	
	@Override
	public RestaurantVO selectOne(String _id) {
		// TODO Auto-generated method stub
		return restaurantDAO.selectOne(_id);
	}

	@Override
	public int updateRestaurantReview(ArrayList<HashMap<String, String>> reviews, String _id) {
		// TODO Auto-generated method stub
		return restaurantDAO.updateRestaurantReview(reviews, _id);
	}

	@Override
	public ArrayList<HashMap<String, String>> getReviews(String _id) {
		// TODO Auto-generated method stub
		return restaurantDAO.getReviews(_id);
	}

	@Override
	public List<RestaurantVO> selectPageList(int pageNumber) {
		// TODO Auto-generated method stub
		return restaurantDAO.selectPageList(pageNumber);
	}

	@Override
	public List<HashMap> getGroupCategory() {
		// TODO Auto-generated method stub
		return restaurantDAO.groupCategory();
	}

	@Override
	public List<RestaurantVO> getCategoryData(String word, int pageNumber) {
		// TODO Auto-generated method stub
		return restaurantDAO.getCategoryData(word, pageNumber);
	}
	public List<RestaurantVO> selectnear(ObjectId objectId) {
		
		return restaurantDAO.selectnear(objectId);
	}
	
	
	
}
