package main.java.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import main.java.service.FestivalService;
import main.java.vo.FestivalVO;
import main.java.vo.MemberVO;

@Controller
public class AdminFestivalController {

	@Autowired
	private FestivalService festivalService;
	
	@RequestMapping(value="admin/admin_festival.do")
	public String helloAdminFestival(Model model) {
		System.out.println("관리자 ---> 축제 관리");
		
		List<FestivalVO> list = festivalService.test();
		model.addAttribute("list", list);
		
		return "admin/admin_festival";
	}
	
	
	// 관리자 축제 insert
	@RequestMapping(value="admin/insert_festival.do")
	public String insert_festival(FestivalVO vo, Model model) {
		System.out.println("관리자 ---> 축제 관리 insert");
		
		//관리자 페이지에서 축제 추가
		FestivalVO result = festivalService.insert_festival(vo);
		
		List<FestivalVO> list = festivalService.test();
		model.addAttribute("list", list);
		
		return "admin/admin_festival";
		
	}
	
	
	//관리자 축제 modify
	@RequestMapping(value="admin/modify_festival.do")
	public String modify_festival(FestivalVO vo, Model model) {
		System.out.println("관리자 ---> 축제 관리 modify");
		
		//관리자 페이지에서 축제 수정
		FestivalVO result = festivalService.modify_festival(vo);
		
		
		//수정 후 돌아가는 화면에서 다시 수정된 리스트 띄우기
		List<FestivalVO> list = festivalService.test();
		model.addAttribute("list", list);
		
		return "admin/admin_festival";
		
	}
	
	//관리자 축제 delete
	@RequestMapping(value="admin/delete_festival.do")
	public String delete_festival(FestivalVO vo, Model model) {
	
		System.out.println("관리자 ---> 축제 관리 delete");
				
		//String del_check = request.getParameter("delete_confirm");
				
		System.out.println("삭제하기");
	
		FestivalVO result = festivalService.delete_festival(vo);
		
		
		//삭제 후 돌아가는 화면에서 다시 삭제된 리스트 띄우기
		List<FestivalVO> list = festivalService.test();
		model.addAttribute("list", list);
		
		
		return "admin/admin_festival";
		}


}
	
	
