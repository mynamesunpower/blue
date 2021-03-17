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
import org.springframework.data.mongodb.core.aggregation.Fields;
import org.springframework.data.mongodb.core.aggregation.GroupOperation;
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
		
		SkipOperation skip = new SkipOperation((pageNumber-1) * postPerPage);
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
	
	
	public List<HashMap> groupCategory() {
		
		GroupOperation group = Aggregation.group("category").count().as("countA");
		SortOperation sort = Aggregation.sort(Sort.Direction.DESC, "countA");
		Aggregation aggregation = Aggregation.newAggregation(group, sort);
		AggregationResults<HashMap> results = mongoTemplate.aggregate(aggregation, collectionName, HashMap.class);
		List<HashMap> result = results.getMappedResults();
		
		return result;
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
				
		System.out.println("식당DAOIMPL에서 selectnear 들어옴");
		Query query = new Query(Criteria.where("_id").is(objectId));
	     //Criteria criteria = new Criteria();
	
	     //query.addCriteria(Criteria.where("_id").is(objectId));
	    
	    List<RestaurantVO> list =  mongoTemplate.find(query, RestaurantVO.class, "restaurant");

	    
	     return list;
		
		
		
	}
	
	@Override
	public List<RestaurantVO> getCategoryData(String category, int pageNumber) {
		
		SkipOperation skip = new SkipOperation((pageNumber-1) * postPerPage);
		LimitOperation limit = new LimitOperation(postPerPage);
		MatchOperation where = Aggregation.match(new Criteria().andOperator(Criteria.where("category").is(category)));
		Aggregation aggregation = Aggregation.newAggregation(where, skip, limit);
		AggregationResults<RestaurantVO> result = mongoTemplate.aggregate(aggregation, collectionName, RestaurantVO.class);
		
		return result.getMappedResults();
	} 
	
	//관리자에서
	public RestaurantVO insert_restaurant(RestaurantVO vo) {
		return mongoTemplate.insert(vo, "restaurant");
	}

	public RestaurantVO modify_restaurant(RestaurantVO vo) {
		Query query = new Query();
        //업데이트 할 항목 정의
        Update update = new Update();
        
     // where절 조건
        query.addCriteria(Criteria.where("title").is(vo.getTitle()));
//        query.addCriteria(Criteria.where("컬럼명2").is("조건값2"));
        	        
        update.set("address", vo.getAddress());
        update.set("tel", vo.getTel());
        update.set("open_time", vo.getOpen_time());
        update.set("close_time", vo.getClose_time());
//        update.set("rest_day", vo.getRest_day());
                	     	     
	
        mongoTemplate.updateMulti(query, update, "restaurant");
        return null;
	}

	public RestaurantVO delete_restaurant(RestaurantVO vo) {
		Criteria criteria = new Criteria("title");
	    criteria.is(vo.getTitle());
	    Query query = new Query(criteria);
	        
	    mongoTemplate.remove(query, "restaurant");
		return null;
	}
	
	@Override
	public int count() {
		// TODO Auto-generated method stub
		
		List<RestaurantVO> vo = mongoTemplate.findAll(RestaurantVO.class, collectionName);
		
		int count= vo.size();
		
		return count;
	}
	
}
