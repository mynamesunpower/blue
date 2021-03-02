package main.java.service;

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
	
}
