package main.java.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
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
	
	
	// 메이트 가입하기
	@RequestMapping(value = "admin/mateRegister.do")
	public String mateRegister(MateVO vo) {
		
		System.out.println("관리자 --->[" + vo.getId() +"] 메이트 가입 요청");
		
		mateService.mateInsert(vo);
		
		return "admin/admin_mate";
	}
	
	
	@RequestMapping(value="admin/mateUpdate.do")
	public String mateUpdate(MateVO vo, Model model) {
		
		System.out.println("관리자 --->[" + vo.getId() +"] 메이트 수정 요청");
		
		//관리자 페이지에서 메이트 정보 수정
		int result = mateService.mateUpdate(vo);
		
		//관리자 페이지에서 회원테이블 생성
		List<MateVO> list = mateService.mateSelectAll();
		
		// 뷰에 실어보낸다
		model.addAttribute("memberlist", list);
		
		return "admin/admin_mate";
	}
	
	
	// 삭제 작업
	@RequestMapping(value="admin/mateDelete.do")
	public String mateDelete(MateVO vo, Model model, HttpServletRequest request) {
				
		System.out.println("관리자 --->[" + vo.getId() +"] 메이트 삭제 요청");
		
		//delete_confirm
		//관리자 페이지에서 일반 회원 정보 수정
		String del_check = request.getParameter("delete_confirm");
		
		System.out.println("삭제하기");
	
		int result = mateService.mateDelete(vo);
		
		//관리자 페이지에서 회원테이블 생성
		List<MateVO> list = mateService.mateSelectAll();
			
		model.addAttribute("memberlist", list);
			
		return "admin/admin_mate";
	}
	
}
