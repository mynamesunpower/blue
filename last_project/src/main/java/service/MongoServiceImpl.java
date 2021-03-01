package main.java.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import main.java.model.MongoDAO;
import main.java.model.MongoDAOImpl;
import main.java.vo.PersonVO;

@Service("mongoService")
public class MongoServiceImpl implements MongoService{

	@Autowired
	private MongoDAOImpl mongoDAO;
	
	@Override
	public List<PersonVO> test() {
		// TODO Auto-generated method stub
		System.out.println("Service 접근");
		return mongoDAO.test();
	}

}
