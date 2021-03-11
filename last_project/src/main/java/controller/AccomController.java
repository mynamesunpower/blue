package main.java.controller;

import java.util.ArrayList;
import java.util.Base64;
import java.util.HashMap;
import java.util.List;

import org.bson.types.Binary;
import org.bson.types.ObjectId;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
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
	public String test2(ModelMap m, @RequestParam(value = "page", defaultValue = "1") int pageNumber) {
		
		System.out.println("AccomController 리스트 요청2");
		List<AccomVO> list = AccomService.selectPageList(pageNumber);
		
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
		
		int pageScale = 5;
		int totalSize = AccomService.getTotalSize();
		HashMap<String, Object> resultMap = new HashMap<String, Object>();
		int pageGroup = (int)Math.ceil((double) pageNumber / 5);
		System.out.println("pageGroup -> " + pageGroup);
		long startPage = ((pageGroup - 1) * pageScale) + 1;
		long endPage = startPage + pageScale - 1;
		long previousPage = (pageGroup - 2) * pageScale + 1;
		long nextPage = pageGroup * pageScale + 1;
		
		resultMap.put("pageGroup", pageGroup);
		resultMap.put("total", totalSize);
		resultMap.put("page", pageNumber);
		resultMap.put("pageScale", pageScale);
		resultMap.put("startPage", startPage);
		resultMap.put("endPage", endPage);
		resultMap.put("nextPage", nextPage);
		resultMap.put("previousPage", previousPage);
		
		
		m.addAttribute("resultMap", resultMap);
		m.addAttribute("list", list);
		
		return "accommodation/accommodations_list";
		
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
		return "accommodation/accommodations_detail";
	}
	
	
	

}
