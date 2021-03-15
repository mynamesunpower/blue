package main.java.service;

import java.util.List;

import main.java.vo.FestivalVO;

public interface FestivalService {

	public List<FestivalVO> test();
	public List<FestivalVO> month(String month);
	public List<FestivalVO> recommand();
	public List<FestivalVO> detail(int tel);
	
	public List<FestivalVO> months();
	
	//관리자에서
	public FestivalVO insert_festival(FestivalVO vo);
	public FestivalVO modify_festival(FestivalVO vo);
	public FestivalVO delete_festival(FestivalVO vo);
	
	
}
