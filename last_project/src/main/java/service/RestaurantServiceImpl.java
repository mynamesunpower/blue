package main.java.service;

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
	
}
