package main.java.model;

import java.util.List;

import main.java.vo.FestivalVO;

public interface FestivalDAO {

	public List<FestivalVO> test();
	public List<FestivalVO> month(String month);
	public List<FestivalVO> recommand();
	public List<FestivalVO> detail(String tel);
	
}
