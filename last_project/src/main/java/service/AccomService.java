package main.java.service;

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

	

}
