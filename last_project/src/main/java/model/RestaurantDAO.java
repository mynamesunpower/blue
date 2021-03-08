package main.java.model;

import java.util.List;

import main.java.vo.RestaurantVO;

public interface RestaurantDAO {

	public List<RestaurantVO> selectAll();

	public RestaurantVO selectOne(String _id);

}
