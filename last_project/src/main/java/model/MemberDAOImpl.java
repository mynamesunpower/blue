package main.java.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import main.java.vo.MemberVO;

@Repository("memberDAO")
public class MemberDAOImpl implements MemberDAO {

	private final String namespace = "memberMapper.";
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public MemberVO memberLogin(MemberVO vo) {

		return sqlSession.selectOne(namespace + "login", vo);
	}

	@Override
	public int memberInsert(MemberVO vo) {
		
		return sqlSession.insert(namespace + "memberJoin", vo);
	}

	@Override
	public int memberUpdate(MemberVO vo) {
		
		return sqlSession.update(namespace + "memberUpdate", vo);
	}

	@Override
	public int memberDelete(MemberVO vo) {
		
		return sqlSession.delete(namespace + "memberDelete", vo);
	}

	@Override
	public int idCheck(MemberVO vo) {
		
		return sqlSession.selectList(namespace + "idCheck", vo).size();
	}

	@Override
	public MemberVO memberIdFind(MemberVO vo) {
		
		return sqlSession.selectOne(namespace + "memberIdFind", vo);
	}

	@Override
	public MemberVO memberPassFind(MemberVO vo) {
		
		return sqlSession.selectOne(namespace + "memberPassFind", vo);
	}
	
	@Override
	public int insert_member(MemberVO vo) {
		return sqlSession.insert(namespace + "insertmember", vo);
	}

	@Override
	public List<MemberVO> addtable() {
		return sqlSession.selectList(namespace + "selectMember");
	}

	@Override
	public int modify_member(MemberVO vo) {
		return sqlSession.update(namespace + "modifyMember",vo);
	}

	public int delete_member(MemberVO vo) {
		return sqlSession.update(namespace + "deleteMember",vo);
	}

	@Override
	public MemberVO selectOne(String user_id) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace + "selectOne", user_id);
	}

	@Override
	public int memberUpdateMypage(MemberVO vo) {
		// TODO Auto-generated method stub
		return sqlSession.update(namespace + "memberUpdateMypage", vo);
	}
	
	
	
}