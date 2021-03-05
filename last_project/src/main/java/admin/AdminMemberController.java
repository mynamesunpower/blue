package main.java.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import main.java.service.MemberServiceImpl;
import main.java.vo.MariaVO;
import main.java.vo.MemberVO;

@Controller
public class AdminMemberController {
	
	
	@Autowired
	private MemberServiceImpl memberService;	
	
	@RequestMapping(value="admin/admin_member.do")
	public String hello(Model model) {
		
		System.out.println("AdminMemberController에서 hello요청");
		
		//관리자 페이지에서 회원테이블 생성
				List<MemberVO> list;
				list = memberService.addtable();
				model.addAttribute("memberlist", list);

		return "admin/admin_member";
	}
	
	
	@RequestMapping(value="admin/insert_member.do")
	public String insert_member(MemberVO vo, Model model) {
					
		System.out.println("AdminMemberController에서 insert_member요청");
		
		//관리자 페이지에서 일반 회원 추가
		int result = memberService.insert_member(vo);
		
		return "admin/admin_member";
	}
	
	@RequestMapping(value="admin/modify_member.do")
	public String modify_member(MemberVO vo, Model model) {
				
		System.out.println("AdminMemberController에서 modify_member요청");
		
		//관리자 페이지에서 일반 회원 정보 수정
		int result = memberService.modify_member(vo);
		
		//관리자 페이지에서 회원테이블 생성
		List<MemberVO> list;
		list = memberService.addtable();
		model.addAttribute("memberlist", list);

		
		return "admin/admin_member";
	}
	
	
	@RequestMapping(value="admin/delete_member.do")
	public String delete_member(MemberVO vo, Model model, HttpServletRequest request) {
				
		System.out.println("AdminMemberController에서 delete_member요청");
		//delete_confirm
		//관리자 페이지에서 일반 회원 정보 수정
		String del_check = request.getParameter("delete_confirm");
		
		//if (del_check == "삭제한다"){
			System.out.println("삭제하기");
	
			int result = memberService.delete_member(vo);
		
			//관리자 페이지에서 회원테이블 생성
			List<MemberVO> list;
			list = memberService.addtable();
			model.addAttribute("memberlist", list);
		
		//}
		//else{
			
		//	System.out.println("<script>alert('삭제한다를 입력해주세요');</script>");
		//}
		
		
		

		
		return "admin/admin_member";
	}

}
