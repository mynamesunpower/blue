package main.java.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import main.java.service.FestivalService;
import main.java.vo.FestivalVO;

@Controller
public class AdminFestivalController {

	@Autowired
	private FestivalService festivalService;
	
	@RequestMapping(value="admin/admin_festival.do")
	public String helloAdminFestival(Model model) {
		System.out.println("관리자 ---> 축제 관리");
		
		List<FestivalVO> list = festivalService.selectAll();
		model.addAttribute("list", list);
		
		return "admin/admin_festival";
	}
	
}
