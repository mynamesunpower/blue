package main.java.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import main.java.model.MemberDAOImpl;
import main.java.vo.MemberVO;

@Service("memberService")
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberDAOImpl memberDao;

	@Override
	public MemberVO memberLogin(MemberVO vo) {
		return memberDao.memberLogin(vo);
	}

	@Override
	public int idCheck(MemberVO vo) {
		return memberDao.idCheck(vo);
	}

	@Override
	public int memberInsert(MemberVO vo) {
		return memberDao.memberInsert(vo);
	}

	@Override
	public int memberUpdate(MemberVO vo) {
		return memberDao.memberUpdate(vo);
	}

	@Override
	public int memberDelete(MemberVO vo) {
		return  memberDao.memberDelete(vo);
	}

	@Override
	public MemberVO memberIdFind(MemberVO vo) {
		return memberDao.memberIdFind(vo);
	}

	@Override
	public MemberVO memberPassFind(MemberVO vo) {
		MemberVO member = memberDao.memberPassFind(vo);
        return member;
	}

	

	@Override
	public int insert_member(MemberVO vo) {
		return memberDao.insert_member(vo);
	}
	
	@Override
	public List<MemberVO> addtable() {
		return memberDao.addtable();
	}

	@Override
	public int modify_member(MemberVO vo) {
		return memberDao.modify_member(vo);
	}
	
	@Override
	public int delete_member(MemberVO vo) {
		// TODO Auto-generated method stub
		return memberDao.delete_member(vo);
	}

	@Override
	public MemberVO selectOne(String user_id) {
		// TODO Auto-generated method stub
		return memberDao.selectOne(user_id);
	}

	@Override
	public int memberUpdateMypage(MemberVO vo) {
		// TODO Auto-generated method stub
		return memberDao.memberUpdateMypage(vo);
	}
	
}