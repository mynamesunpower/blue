package main.java.model;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.bson.types.ObjectId;

import main.java.vo.FestivalVO;
import main.java.vo.InstarVO;

public interface FestivalDAO {

	public List<FestivalVO> test();
	public List<FestivalVO> month(String month);

	public List<FestivalVO> detail(int tel);
	public List<FestivalVO> near(ObjectId objectId);
	public ArrayList<HashMap<String, String>> getReviews(String _id);
	public int updateRestaurantReview(ArrayList<HashMap<String, String>> reviews, String _id);
	public List<FestivalVO> search(String word);
	public long festivalcount();

	public List<InstarVO> instar();
	public List<InstarVO> detail_instar(int tel);
	public List<FestivalVO> selectPageList(int pageNumber);
	public List<FestivalVO> getRegionData(String region, int pageNumber);
	public List<HashMap> groupRegion();

	//관리자에서
	public FestivalVO insert_festival(FestivalVO vo);
	public FestivalVO modify_festival(FestivalVO vo);
	public FestivalVO delete_festival(FestivalVO vo);















}
