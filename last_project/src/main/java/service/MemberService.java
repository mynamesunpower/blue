package main.java.service;

import java.util.List;

import main.java.vo.MemberVO;

public interface MemberService {
	
	public MemberVO memberLogin(MemberVO vo);
	
	public int idCheck(MemberVO vo);
	
	public int memberInsert(MemberVO vo);
	
	public int memberUpdate(MemberVO vo);
	
	public int memberDelete(MemberVO vo);
	
	public MemberVO memberIdFind(MemberVO vo);
	
	public MemberVO memberPassFind(MemberVO vo);
	
	public int insert_member(MemberVO vo);

	public List<MemberVO> addtable();

	public int modify_member(MemberVO vo);

	public int delete_member(MemberVO vo);

	public MemberVO selectOne(String user_id);
	
}
