package main.java.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import main.java.model.FestivalDAO;
import main.java.vo.FestivalVO;

@Service("festivalService")
public class FestivalServiceImpl implements FestivalService {

	@Autowired
	private FestivalDAO festivalDao;
	
	@Override
	public List<FestivalVO> test() {
		// TODO Auto-generated method stub
		System.out.println("Service 접근");
		return festivalDao.test();
	}
	
	@Override
	public List<FestivalVO> month(String month) {
		// TODO Auto-generated method stub
		System.out.println("Service 접근: month()");
		return festivalDao.month(month);
	}
	
	@Override
	public List<FestivalVO> recommand(){
		return festivalDao.recommand();
	}

	@Override
	public List<FestivalVO> detail(int tel) {
		
		return festivalDao.detail(tel);
	}

	@Override
	public List<FestivalVO> months() {
		
		return null;
	}
	
	

}
