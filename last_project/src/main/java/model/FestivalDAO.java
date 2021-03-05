package main.java.model;

import java.util.List;

import main.java.vo.FestivalVO;

public interface FestivalDAO {

	public List<FestivalVO> selectAll();
	
}
