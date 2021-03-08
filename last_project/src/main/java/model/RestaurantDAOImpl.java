package main.java.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Repository;

import main.java.vo.RestaurantVO;

@Repository("restaurantDAO")
public class RestaurantDAOImpl implements RestaurantDAO {

	private final String collectionName = "restaurant";
	
	@Autowired
	private MongoTemplate mongoTemplate;

	@Override
	public List<RestaurantVO> selectAll() {
		// TODO Auto-generated method stub
		return mongoTemplate.findAll(RestaurantVO.class, collectionName);
	}

	@Override
	public RestaurantVO selectOne(String _id) {
		// TODO Auto-generated method stub
		//Query query = new Query(Criteria.where("_id").is(_id));

		return mongoTemplate.findById(_id, RestaurantVO.class, collectionName);
	}
	
}
