package main.java.model;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Repository;

import main.java.vo.PersonVO;

@Repository("mongoDAO")
public class MongoDAOImpl implements MongoDAO {

	private final String dbName = "personVO"; // Collection_name
	
	@Autowired
	private MongoTemplate mongoTemplate;
	
	@Override
	public List<PersonVO> test() {
		System.out.println("DAO 접근");
		Query query = new Query(Criteria.where("age").gte(10));
		//query.addCriteria(Criteria.where("text").regex("Joe"));
		
		return mongoTemplate.find(query, PersonVO.class, dbName);
	}
	
}
