package main.java.model;

import java.util.List;

import org.bson.types.ObjectId;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.data.mongodb.core.query.Update;
import org.springframework.stereotype.Repository;
import main.java.vo.AccomVO;
import main.java.vo.FestivalVO;

@Repository("accomDAO")
public class AccomDAOImpl implements AccomDAO{
	
	@Autowired
	private MongoTemplate mongoTemplate;
	
	private final String lodgment = "lodgment"; //collection_name(테이블명)
	
	//숙소 목록 조회
	@Override
	public List<AccomVO> test() {
		// TODO Auto-generated method stub
		System.out.println("리스트 DAO 접근");
		
		return mongoTemplate.findAll(AccomVO.class, lodgment);
	}

	//숙소 상세
	public AccomVO detail(String _id) {
		// TODO Auto-generated method stub
		System.out.println("상세 DAO 접근");
		AccomVO vo = mongoTemplate.findById(_id, AccomVO.class, lodgment);
		System.out.println(vo);
		
		return vo;
	}

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
