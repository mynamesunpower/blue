package main.java.admin;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import main.java.service.MateServiceImpl;
import main.java.vo.MateVO;
import main.java.vo.MemberVO;

@Controller
public class AdminMateController {

	@Autowired
	private MateServiceImpl mateService;
	
	@RequestMapping("admin/admin_mate.do")
	public String helloAdminMate(Model m) {
		
		System.out.println("admin/admin_mate.do 요청");
		List<MateVO> mateList = mateService.mateSelectAll();
		m.addAttribute("mateList", mateList);
		
		return "admin/admin_mate";
	}
	
	@RequestMapping(value = "admin/mateIdCheck.do", produces = "application/text;charset=utf-8")
	@ResponseBody
	public String mateIdCheck(MateVO vo) {
		
		System.out.println("ID Check AJAX -> " + vo.getId() + " 가 DB에 존재하는지 확인");
		int result = mateService.mateIdCheck(vo);
		
		String message = "사용 가능합니다.";
		
		if (result == 0) {
			message = "디비에 존재하지 않는 아이디입니다.";
		}
		return message;
	}
	
	
	@RequestMapping(value = "admin/mateRegister.do")
	public String mateRegister(MateVO vo, HttpSession session) {
		
		System.out.println("--- 메이트 가입 요청 ---");
		System.out.println(vo.getId() + " | " + vo.getGender() + " | " + vo.getNickname());
		
		mateService.mateInsert(vo);
		
		return "admin/admin_mate";
		// 메이트가입
		//int result = adminMateService.memberInsert(vo);
		//memberLogin(vo, session);
		//return Integer.toString(result);
	}
	
}
