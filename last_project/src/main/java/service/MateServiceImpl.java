package main.java.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import main.java.model.MateDAO;
import main.java.vo.MateVO;
import main.java.vo.MemberVO;

@Service("mateService")
public class MateServiceImpl implements MateService {

	@Autowired
	private MateDAO mateDao;

	@Override
	public int mateInsert(MateVO vo) {
		
		return mateDao.mateInsert(vo);
	}

	@Override
	public List<MateVO> mateSelectAll() {
		// TODO Auto-generated method stub
		return mateDao.mateSelectAll();
	}

	@Override
	public int mateIdCheck(MateVO vo) {
		// TODO Auto-generated method stub
		return mateDao.mateIdCheck(vo);
	}

	@Override
	public int mateUpdate(MateVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int mateDelete(MateVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	
	
	
	
	
}
