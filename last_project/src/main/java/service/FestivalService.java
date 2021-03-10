package main.java.service;

import java.util.List;

import org.bson.types.ObjectId;

import main.java.vo.FestivalVO;

public interface FestivalService {

	public List<FestivalVO> test();
	public List<FestivalVO> month(String month);
	public List<FestivalVO> recommand();
	public List<FestivalVO> detail(int tel);
	public List<FestivalVO> months();
	List<FestivalVO> near(ObjectId objectId);
	
}
