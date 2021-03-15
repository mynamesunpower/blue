package main.java.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import main.java.model.MariaDAOImpl;
import main.java.vo.MariaVO;

@Service("MariaService")
public class MariaServiceImpl implements MariaService {

	@Autowired
	private MariaDAOImpl dao;
	
	@Override
	public List<MariaVO> test() throws Exception {
		// TODO Auto-generated method stub
		return dao.test();
	}

}