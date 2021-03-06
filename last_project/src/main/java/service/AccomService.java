package main.java.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.bson.types.ObjectId;

import main.java.vo.AccomVO;

public interface AccomService {
	//숙박 리스트 조회
	public List<AccomVO> test();
	
	//숙박 상세
	public AccomVO detail(String _id);

	// 총 데이터 크기
	public int getTotalSize();

	public List<AccomVO> selectPageList(int pageNumber);

	public int updateAccomReview(ArrayList<HashMap<String, String>> reviews, String _id);

	public ArrayList<HashMap<String, String>> getReviews(String _id);
	public List<AccomVO> selectOne(Object object);
	public List<HashMap> groupRegion();
	
	public List<AccomVO> getRegionData(String region, int pageNumber);
	

	//관리자에서
	public AccomVO insert_lodgment(AccomVO vo);
	public AccomVO modify_lodgment(AccomVO vo);
	public AccomVO delete_lodgment(AccomVO vo);

	
	

	
	

}
