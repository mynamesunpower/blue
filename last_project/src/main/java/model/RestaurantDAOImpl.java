package main.java.model;

import java.io.ByteArrayOutputStream;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.regex.Pattern;

import org.bson.Document;
import org.bson.types.ObjectId;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.aggregation.Aggregation;
import org.springframework.data.mongodb.core.aggregation.AggregationResults;
import org.springframework.data.mongodb.core.aggregation.LimitOperation;
import org.springframework.data.mongodb.core.aggregation.MatchOperation;
import org.springframework.data.mongodb.core.aggregation.SkipOperation;
import org.springframework.data.mongodb.core.aggregation.SortOperation;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.data.mongodb.core.query.Update;
import org.springframework.data.mongodb.core.query.UpdateDefinition;
import org.springframework.stereotype.Repository;

import com.mongodb.client.result.UpdateResult;
import com.mongodb.internal.operation.AggregateOperation;

import main.java.vo.FestivalVO;
import main.java.vo.RestaurantVO;

@Repository("restaurantDAO")
public class RestaurantDAOImpl implements RestaurantDAO {

	
	
	@Autowired
	private MongoTemplate mongoTemplate;
	
	private final String collectionName = "restaurant";
	
	// 한 페이지에 나타날 숫자
	private int postPerPage = 5;

	@Override
	public List<RestaurantVO> selectPageList(int pageNumber) {
		
		SkipOperation skip = new SkipOperation((pageNumber-1) * 10);
		LimitOperation limit = new LimitOperation(postPerPage);
		
		//  limit 만큼 skip 하기.
		Aggregation aggregation = Aggregation.newAggregation(skip, limit);
		AggregationResults<RestaurantVO> result = mongoTemplate.aggregate(aggregation, collectionName, RestaurantVO.class);
		
		return result.getMappedResults();
		
	}
	
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

	
	@Override
	public List<RestaurantVO> selectnear(ObjectId objectId) {
		System.out.println("식당아이디는 오니"+objectId);
		
		Query query = new Query(Criteria.where("_id").is(objectId));
	     //Criteria criteria = new Criteria();
	
	     //query.addCriteria(Criteria.where("_id").is(objectId));
	    
	    List<RestaurantVO> list =  mongoTemplate.find(query, RestaurantVO.class, "restaurant");

	    
		 //Query query = new Query();
	     //Criteria criteria = new Criteria();
		//query.addCriteria(criteria.where("_id").is(objectId));
	    
	    // List<RestaurantVO> list =  (List<RestaurantVO>) mongoTemplate.findById(query,RestaurantVO.class, "restaurant" );

	     System.out.println("여기는 다오에서 식당"+list);
	     return list;
		
		
		
	}
	
	
}
