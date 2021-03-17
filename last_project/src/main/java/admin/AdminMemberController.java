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
		
		System.out.println("AdminMemberController�뿉�꽌 hello�슂泥�");
		
		//愿�由ъ옄 �럹�씠吏��뿉�꽌 �쉶�썝�뀒�씠釉� �깮�꽦
				List<MemberVO> list;
				list = memberService.addtable();
				model.addAttribute("memberlist", list);

		return "admin/admin_member";
	}
	
	
	@RequestMapping(value="admin/insert_member.do")
	public String insert_member(MemberVO vo, Model model) {
					
		System.out.println("AdminMemberController�뿉�꽌 insert_member�슂泥�");
		
		//관리자 페이지에서 맴버 추가
		int result = memberService.insert_member(vo);
		
		return "admin/admin_member";
	}
	
	@RequestMapping(value="admin/modify_member.do")
	public String modify_member(MemberVO vo, Model model) {
				
		System.out.println("AdminMemberController�뿉�꽌 modify_member�슂泥�");
		
		//관리자 페이지에서 회원정보 수정
		int result = memberService.modify_member(vo);
		
		//회원정보 수정
		List<MemberVO> list;
		list = memberService.addtable();
		model.addAttribute("memberlist", list);

		
		return "admin/admin_member";
	}
	
	
	@RequestMapping(value="admin/delete_member.do")
	public String delete_member(MemberVO vo, Model model, HttpServletRequest request) {
				
		System.out.println("AdminMemberController�뿉�꽌 delete_member�슂泥�");
		//delete_confirm
		//愿�由ъ옄 �럹�씠吏��뿉�꽌 �씪諛� �쉶�썝 �젙蹂� �닔�젙
		String del_check = request.getParameter("delete_confirm");
		
		//if (del_check == "�궘�젣�븳�떎"){
			System.out.println("�궘�젣�븯湲�");
	
			int result = memberService.delete_member(vo);
		
			//愿�由ъ옄 �럹�씠吏��뿉�꽌 �쉶�썝�뀒�씠釉� �깮�꽦
			List<MemberVO> list;
			list = memberService.addtable();
			model.addAttribute("memberlist", list);
		
		//}
		//else{
			
		//	System.out.println("<script>alert('�궘�젣�븳�떎瑜� �엯�젰�빐二쇱꽭�슂');</script>");
		//}
		
		
		

		
		return "admin/admin_member";
	}

}
