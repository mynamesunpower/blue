package main.java.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import main.java.vo.MariaVO;

@Repository("TestDAO")
public class MariaDAOImpl implements MariaDAO {
	
	private static final String namespace="testMapper";

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<MariaVO> test() throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList("TestMapper.test");
	}
	
}