package main.java.model;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;

import org.bson.types.ObjectId;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.aggregation.Aggregation;
import org.springframework.data.mongodb.core.aggregation.AggregationExpression;
import org.springframework.data.mongodb.core.aggregation.AggregationOperation;
import org.springframework.data.mongodb.core.aggregation.AggregationResults;
import org.springframework.data.mongodb.core.aggregation.ArrayOperators;
import org.springframework.data.mongodb.core.aggregation.ArrayOperators.ArrayElemAt;
import org.springframework.data.mongodb.core.aggregation.GroupOperation;
import org.springframework.data.mongodb.core.aggregation.LimitOperation;
import org.springframework.data.mongodb.core.aggregation.MatchOperation;
import org.springframework.data.mongodb.core.aggregation.ProjectionOperation;
import org.springframework.data.mongodb.core.aggregation.SkipOperation;
import org.springframework.data.mongodb.core.aggregation.SortOperation;
import org.springframework.data.mongodb.core.aggregation.StringOperators;
import org.springframework.data.mongodb.core.aggregation.StringOperators.Split;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.data.mongodb.core.query.Update;
import org.springframework.stereotype.Repository;

import com.mongodb.client.model.Field;
import com.mongodb.client.result.UpdateResult;

import main.java.vo.AccomVO;
import main.java.vo.RestaurantVO;

@Repository("accomDAO")
public class AccomDAOImpl implements AccomDAO{
	
	@Autowired
	private MongoTemplate mongoTemplate;
	
	private final String lodgment = "lodgment"; //collection_name(테이블명)
	
	private int postPerPage = 5;
	
	// pageNumber에 맞게끔 숙소 목록 조회
	@Override
	public List<AccomVO> selectPageList(int pageNumber) {
		
		// 전체 데이터에서 skip만큼 넘어간다.
		SkipOperation skip = new SkipOperation((pageNumber-1) * postPerPage);
		
		
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
	
	// 지역 카테고리 나누기
	@Override
	public List<HashMap> groupRegion() {
			
			ProjectionOperation project = 
					Aggregation.project()
					.and(StringOperators.Split.valueOf("address").split(" "))
					.as("region");
			
			ProjectionOperation project2 = 
					Aggregation.project()
					.and(ArrayOperators.arrayOf("region").elementAt(0))
					.as("region");
			
			GroupOperation group = Aggregation.group("region").count().as("regionCount");
			
			SortOperation sort = Aggregation.sort(Sort.Direction.DESC, "regionCount");

			Aggregation aggregation = Aggregation.newAggregation(project, project2, group, sort);
			AggregationResults<HashMap> results = mongoTemplate.aggregate(aggregation, lodgment, HashMap.class);
			
			
			return results.getMappedResults();
	} 
	

	// ArrayList reviews에 새 review를 담아 업데이트.
	@Override
	public int updateAccomReview(ArrayList<HashMap<String, String>> reviews, String _id) {
		
		Query query = new Query(Criteria.where("_id").is(_id));
		
		Update update = new Update();
		update.set("reviews", reviews);
		
		UpdateResult result = mongoTemplate.updateFirst(query, update, lodgment);
	
		return (int)result.getModifiedCount();
	}

	// 지역 데이터 가져오기
	@Override
	public List<AccomVO> getRegionData(String region, int pageNumber) {
		
		SkipOperation skip = new SkipOperation((pageNumber-1) * postPerPage);
		LimitOperation limit = new LimitOperation(postPerPage);
		MatchOperation where = Aggregation.match(new Criteria().andOperator(Criteria.where("address").regex(region)));
		Aggregation aggregation = Aggregation.newAggregation(where, skip, limit);
		
		AggregationResults<AccomVO> result = mongoTemplate.aggregate(aggregation, lodgment, AccomVO.class);
		
		return result.getMappedResults();
	}
	
	// _id에 있는 reviews ArrayList 가져오기.
	@Override
	public ArrayList<HashMap<String, String>> getReviews(String _id) {
		
		System.out.println("DAO 진입");
		System.out.println(_id);
		
		AccomVO vo = mongoTemplate.findById(_id, AccomVO.class, lodgment);
		//List<RestaurantVO> vo = mongoTemplate.find(query, RestaurantVO.class, collectionName);
		
		return vo.getReviews();
	}	
	
	
	// _id(PK)로 1개 데이터 찾기.
	public List<AccomVO> selectOne(Object object) {
		
		Query query = new Query(Criteria.where("_id").is(object));
		
		List<AccomVO> list = mongoTemplate.find(query, AccomVO.class, "lodgment");
		
		
		return list;
	}
	
	
	// 아래는 관리자 CUD
	public AccomVO insert_lodgment(AccomVO vo) {
		return mongoTemplate.insert(vo, lodgment);
	}

	
	public AccomVO modify_lodgment(AccomVO vo) {		
		Query query = new Query();
        //업데이트 할 항목 정의
        Update update = new Update();
        
     // where절 조건
        query.addCriteria(Criteria.where("title").is(vo.getTitle()));
//        query.addCriteria(Criteria.where("컬럼명2").is("조건값2"));
        	        
        update.set("address", vo.getAddress());
        update.set("tel", vo.getTel());
        update.set("checkin", vo.getCheckin());
        update.set("checkout", vo.getCheckout());
        update.set("booking_url", vo.getBooking_url());
                	     	     
	
        mongoTemplate.updateMulti(query, update, "lodgment");
        
        return null;
	}

	public AccomVO delete_lodgment(AccomVO vo) {		
		Criteria criteria = new Criteria("title");
	    criteria.is(vo.getTitle());
	    Query query = new Query(criteria);
	        
	    mongoTemplate.remove(query, "lodgment");
		return null;
	}

	

	

	
}
