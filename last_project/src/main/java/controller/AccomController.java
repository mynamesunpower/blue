package main.java.controller;

import java.util.ArrayList;
import java.util.Base64;
import java.util.List;

import org.bson.types.Binary;
import org.bson.types.ObjectId;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import main.java.service.AccomService;
import main.java.vo.AccomVO;

@Controller
public class AccomController {
		
	//의존관계 주입 => AccomServiceImpl 생성
	@Autowired
	private AccomService AccomService;
	
	//숙박 리스트 조회
	@RequestMapping(value="/accommodations_list.do")
	public String test2(Model m) {
		
		System.out.println("AccomController 리스트 요청2");
		List<AccomVO> list = AccomService.test();
		
		System.out.println("컨트롤러에서"+list);
		
		// 이미지 띄우기
		for (AccomVO vo : list) {
			// 異뺤젣�뿉 �엳�뒗 ArrayList<Binary> image瑜�
			ArrayList<String> imageList = new ArrayList<String>();
			for (Binary img : vo.getImage()) {
				String image = Base64.getEncoder().encodeToString(img.getData());
				imageList.add(image);
			}
			vo.setImages(imageList);
		}
		
		m.addAttribute("list", list);
		
		return "accommodations_list";
		
	}
	
	//숙박 상세 페이지
	@RequestMapping(value="/accommodations_detail.do")
	public String test3(Model m, @RequestParam("_id") String _id) {
		System.out.println("AccomController 상세 요청 : "+ _id);
		
		AccomVO vo = AccomService.detail(_id);
		
		// 이미지 띄우기
		ArrayList<String> imageList = new ArrayList<String>();
		for (Binary img : vo.getImage()) {
			String image = Base64.getEncoder().encodeToString(img.getData());
			imageList.add(image);
		}
		vo.setImages(imageList);
		
		//m.addAttribute("", vo);
		m.addAttribute("detail", vo);		
		return "accommodations_detail";
	}
	
	
	

}
