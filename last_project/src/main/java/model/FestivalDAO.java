package main.java.model;

import java.util.List;

import main.java.vo.FestivalVO;

public interface FestivalDAO {

	public List<FestivalVO> test();
	public List<FestivalVO> month(String month);
	public List<FestivalVO> recommand();
	public List<FestivalVO> detail(int tel);
	
	//관리자에서
	public FestivalVO insert_festival(FestivalVO vo);
	public FestivalVO modify_festival(FestivalVO vo);
	public FestivalVO delete_festival(FestivalVO vo);

	
	
}
