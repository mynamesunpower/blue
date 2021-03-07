package main.java.controller;

import java.util.ArrayList;
import java.util.Base64;
import java.util.List;

import org.bson.types.Binary;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import main.java.service.FestivalService;
import main.java.vo.FestivalVO;

@Controller
public class FestivalController {

	@Autowired
	private FestivalService festivalService;
	
	// admin_festival.do 요청이 들어오면
	@RequestMapping(value = "/mongo.do")
	public String test2(Model model) {
		
		List<FestivalVO> list = festivalService.selectAll();
		
		// 축제마다 for문 돌기
		for (FestivalVO vo : list) {
			
			// 축제에 있는 ArrayList<Binary> image를
			ArrayList<String> imageList = new ArrayList<String>();
			for (Binary img : vo.getImage()) {
				String image = Base64.getEncoder().encodeToString(img.getData());
				imageList.add(image);
			}
			vo.setImages(imageList);
			
		}
		
		model.addAttribute("list", list);

		return "mongo";
	}
	
}
