package main.java.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.bson.types.ObjectId;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import main.java.model.AccomDAOImpl;
import main.java.vo.AccomVO;

@Service("AccomService")
public class AccomServiceImpl implements AccomService {

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

	@Override
	public int getTotalSize() {
		return accomDAO.test().size();
	}

	@Override
	public List<AccomVO> selectPageList(int pageNumber){
		return accomDAO.selectPageList(pageNumber);
	}

	@Override
	public int updateAccomReview(ArrayList<HashMap<String, String>> reviews, String _id) {
		// TODO Auto-generated method stub
		return accomDAO.updateAccomReview(reviews, _id);
	}

	@Override
	public ArrayList<HashMap<String, String>> getReviews(String _id) {
		// TODO Auto-generated method stub
		System.out.println("서비스 진입");
		return accomDAO.getReviews(_id);
	}
	public List<AccomVO> selectOne(Object object) {

		return accomDAO.selectOne(object);
	}

	@Override
	public List<HashMap> groupRegion() {
		return accomDAO.groupRegion();
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

	@Override
	public List<AccomVO> getRegionData(String region, int pageNumber) {
		// TODO Auto-generated method stub
		return accomDAO.getRegionData(region, pageNumber);
	}

}
