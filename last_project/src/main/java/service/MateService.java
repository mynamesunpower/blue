package main.java.service;

import java.util.List;

import main.java.vo.MateVO;
import main.java.vo.MemberVO;

public interface MateService {

	public int mateInsert(MateVO vo);
	
	public List<MateVO> mateSelectAll();
	
	public int mateIdCheck(MateVO vo);
	
	public int mateUpdate(MateVO vo);
	
	public int mateDelete(MateVO vo);
	
}
