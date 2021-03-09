package main.java.model;

import java.util.List;

import org.bson.types.ObjectId;

import main.java.vo.AccomVO;

public interface AccomDAO {

	//숙소 리스트 조회
	public List<AccomVO> test();
	
	//숙소 상세
	public AccomVO detail(String _id);
}
