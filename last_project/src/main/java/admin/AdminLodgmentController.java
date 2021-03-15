package main.java.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import main.java.service.AccomServiceImpl;
import main.java.vo.AccomVO;
import main.java.vo.FestivalVO;

@Controller
public class AdminLodgmentController {

	
	@Autowired
	private AccomServiceImpl accomService;
	
	
	@RequestMapping(value="admin/admin_lodgment.do")
	public String helloAdminFestival(Model m) {
		
		System.out.println("관리자 ---> 숙박 관리");
		List<AccomVO> list = accomService.test();
				
		m.addAttribute("lodgmentlist", list);
				
		return "admin/admin_lodgment";
	}
	
	
	//관리자 숙박 insert
	@RequestMapping(value="admin/insert_lodgment.do")
	public String insert_lodgment(AccomVO vo, Model model) {
		System.out.println("관리자 ---> 숙박 관리 insert");
		
		//관리자 페이지에서 숙박 추가
		AccomVO result = accomService.insert_lodgment(vo);
		
		List<AccomVO> list = accomService.test();
		model.addAttribute("lodgmentlist", list);
		
		return "admin/admin_lodgment";
		
	}
	
	
	//관리자 숙박 modify
	@RequestMapping(value="admin/modify_lodgment.do")
	public String modify_lodgment(AccomVO vo, Model model) {
		System.out.println("관리자 ---> 숙박 관리 modify");
		
		//관리자 페이지에서 축제 수정
		AccomVO result = accomService.modify_lodgment(vo);
		
		
		//수정 후 돌아가는 화면에서 다시 수정된 리스트 띄우기
		List<AccomVO> list = accomService.test();
		model.addAttribute("lodgmentlist", list);
		
		return "admin/admin_lodgment";	
	}
	
	//관리자 숙박 delete
		@RequestMapping(value="admin/delete_lodgment.do")
		public String delete_lodgment(AccomVO vo, Model model) {
		
			System.out.println("관리자 ---> 숙박 관리 delete");
					
			//String del_check = request.getParameter("delete_confirm");
					
			System.out.println("삭제하기");
		
			AccomVO result = accomService.delete_lodgment(vo);
			
			
			//삭제 후 돌아가는 화면에서 다시 삭제된 리스트 띄우기
			List<AccomVO> list = accomService.test();
			model.addAttribute("lodgmentlist", list);
			
			
			return "admin/admin_lodgment";
			}
	
}
