package main.java.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

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

	
	//관리자에서
	public RestaurantVO insert_restaurant(RestaurantVO vo) {
		return restaurantDAO.insert_restaurant(vo);
	}

	public RestaurantVO modify_restaurant(RestaurantVO vo) {
		return restaurantDAO.modify_restaurant(vo);
	}

	public RestaurantVO delete_restaurant(RestaurantVO vo) {
		return restaurantDAO.delete_restaurant(vo);
	}
	
}
