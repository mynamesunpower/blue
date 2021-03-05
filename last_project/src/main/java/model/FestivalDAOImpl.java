package main.java.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.stereotype.Repository;

import main.java.vo.FestivalVO;

@Repository("festivalDAO")
public class FestivalDAOImpl implements FestivalDAO {

	@Autowired
	private MongoTemplate mongoTemplate;
	
	private final String festival = "festival"; // Collection_name
	private final String restaurant = "restaurant"; // Collection_name
	
	@Override
	public List<FestivalVO> selectAll() {
		System.out.println("축제 DAO 접근");
		
		//Query query = new Query(Criteria.where(key));
		//query.addCriteria(Criteria.where("text").regex("Joe"));
		
		return mongoTemplate.findAll(FestivalVO.class, festival);
	}
	
}
