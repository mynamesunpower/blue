package main.java.model;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.bson.types.ObjectId;

import main.java.vo.AccomVO;
import main.java.vo.RestaurantVO;
import main.java.vo.FestivalVO;

public interface AccomDAO {

	//숙소 리스트 조회
	public List<AccomVO> test();
	
	//숙소 상세
	public AccomVO detail(String _id);

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
