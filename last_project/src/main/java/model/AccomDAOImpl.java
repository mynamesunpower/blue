package main.java.model;

import java.util.List;

import org.bson.types.ObjectId;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
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
	

	
}
