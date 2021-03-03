package main.java.model;

import java.util.List;

import org.apache.ibatis.jdbc.SQL;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import main.java.vo.MateVO;
import main.java.vo.MemberVO;

@Repository("mateDAO")
public class MateDAOImpl implements MateDAO {

private final String namespace = "mateMapper.";
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public int mateInsert(MateVO vo) {
		
		System.out.println(vo.getNickname() + "님 mateDAO INSERT");
		
		return sqlSession.insert(namespace + "insert", vo);
	}

	@Override
	public List<MateVO> mateSelectAll() {
		
		return sqlSession.selectList(namespace + "selectAll");
	}

	@Override
	public int mateIdCheck(MateVO vo) {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace + "idCheck", vo).size();
	}
	
	
	
}
