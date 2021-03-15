package main.java.service;

import java.util.List;

import org.bson.types.ObjectId;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import main.java.model.AccomDAOImpl;
import main.java.vo.AccomVO;

@Service("AccomService")
public class AccomServiceImpl implements AccomService{

	@Autowired
	private AccomDAOImpl accomDAO;
	
	public List<AccomVO> test() {
		System.out.println("숙박 Service 접근");
		return accomDAO.test();
	}

	@Override
	public AccomVO detail(String _id) {
		System.out.println("숙박 상세 Service 접근");
		return accomDAO.detail(_id);
	}

	//관리자에서
	@Override
	public AccomVO insert_lodgment(AccomVO vo) {
		return accomDAO.insert_lodgment(vo);
	}

	@Override
	public AccomVO modify_lodgment(AccomVO vo) {
		return accomDAO.modify_lodgment(vo);
	}

	@Override
	public AccomVO delete_lodgment(AccomVO vo) {
		return accomDAO.delete_lodgment(vo);
	}

}
