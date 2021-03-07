package main.java.service;

import java.util.List;

import main.java.vo.FestivalVO;

public interface FestivalService {

	public List<FestivalVO> test();
	public List<FestivalVO> month(String month);
	public List<FestivalVO> recommand();
	public List<FestivalVO> detail(String tel);
}
