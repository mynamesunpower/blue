package main.java.service;

import java.util.List;

import main.java.vo.RestaurantVO;

public interface RestaurantService {

	public List<RestaurantVO> selectAll();

	public RestaurantVO selectOne(String _id);
	
}
