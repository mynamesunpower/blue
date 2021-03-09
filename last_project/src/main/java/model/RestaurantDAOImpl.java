package main.java.model;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.data.mongodb.core.query.Update;
import org.springframework.data.mongodb.core.query.UpdateDefinition;
import org.springframework.stereotype.Repository;

import com.mongodb.client.result.UpdateResult;

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

	@Override
	public int updateRestaurantReview(ArrayList<HashMap<String, String>> reviews, String _id) {
		// TODO Auto-generated method stub
		
		Query query = new Query(Criteria.where("_id").is(_id));
		
		Update update = new Update();
		update.set("reviews", reviews);
		
		UpdateResult result = mongoTemplate.updateFirst(query, update, collectionName);
	
		return (int)result.getModifiedCount();
	}

	@Override
	public ArrayList<HashMap<String, String>> getReviews(String _id) {
		// TODO Auto-generated method stub
		
		RestaurantVO vo = mongoTemplate.findById(_id, RestaurantVO.class, collectionName);
		//List<RestaurantVO> vo = mongoTemplate.find(query, RestaurantVO.class, collectionName);
		return vo.getReviews();
	}
	
}
