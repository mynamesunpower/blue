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
	
}
