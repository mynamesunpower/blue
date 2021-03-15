package main.java.model;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;

import org.bson.types.ObjectId;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.aggregation.Aggregation;
import org.springframework.data.mongodb.core.aggregation.AggregationResults;
import org.springframework.data.mongodb.core.aggregation.LimitOperation;
import org.springframework.data.mongodb.core.aggregation.SkipOperation;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.data.mongodb.core.query.Update;
import org.springframework.stereotype.Repository;

import com.mongodb.client.result.UpdateResult;

import main.java.vo.AccomVO;

@Repository("accomDAO")
public class AccomDAOImpl implements AccomDAO{
	
	@Autowired
	private MongoTemplate mongoTemplate;
	
	private final String lodgment = "lodgment"; //collection_name(테이블명)
	
	private int postPerPage = 5;
	
	// 페이지에 맞게끔 숙소 목록 조회
	@Override
	public List<AccomVO> selectPageList(int pageNumber) {
		
		SkipOperation skip = new SkipOperation((pageNumber-1) * 10);
		LimitOperation limit = new LimitOperation(postPerPage);
		Aggregation aggregation = Aggregation.newAggregation(skip, limit);
		AggregationResults<AccomVO> result = mongoTemplate.aggregate(aggregation, lodgment, AccomVO.class);
		
		return result.getMappedResults();
		
	}
	
	
	//숙소 목록 모두 조회
	@Override
	public List<AccomVO> test() {
		// TODO Auto-generated method stub
		System.out.println("리스트 DAO 접근");
		
		return mongoTemplate.findAll(AccomVO.class, lodgment);
	}

	//숙소 상세
	@Override
	public AccomVO detail(String _id) {
		// TODO Auto-generated method stub
		System.out.println("상세 DAO 접근");
		AccomVO vo = mongoTemplate.findById(_id, AccomVO.class, lodgment);
		System.out.println(vo);
		
		return vo;
	}

	@Override
	public int updateAccomReview(ArrayList<HashMap<String, String>> reviews, String _id) {
		
		Query query = new Query(Criteria.where("_id").is(_id));
		
		Update update = new Update();
		update.set("reviews", reviews);
		
		UpdateResult result = mongoTemplate.updateFirst(query, update, lodgment);
	
		return (int)result.getModifiedCount();
	}

	@Override
	public ArrayList<HashMap<String, String>> getReviews(String _id) {
		
		System.out.println("DAO 진입");
		System.out.println(_id);
		
		AccomVO vo = mongoTemplate.findById(_id, AccomVO.class, lodgment);
		//List<RestaurantVO> vo = mongoTemplate.find(query, RestaurantVO.class, collectionName);
		System.out.println(vo.getAddress());
		System.out.println(vo.getLatitude());
		System.out.println(vo.get_id());
		
		return vo.getReviews();
	public List<AccomVO> selectOne(Object object) {
		
		Query query = new Query(Criteria.where("_id").is(object));
		
		List<AccomVO> list = mongoTemplate.find(query, AccomVO.class, "lodgment");
		
		
		return list;
	}
	

	
}
