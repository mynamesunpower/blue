package main.java.controller;
import java.util.ArrayList;
import java.util.Base64;
import java.util.Calendar;
import java.util.List;
import org.bson.types.Binary;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import main.java.service.FestivalService;
import main.java.vo.FestivalVO;

@Controller
public class FestivalController {
	@Autowired
	private FestivalService festivalService;
	
	// mongo.do �슂泥��씠 �뱾�뼱�삤硫�
	@RequestMapping(value = "/mongo.do")
	public String test2(Model model) {
		
		List<FestivalVO> list = festivalService.test();
		//List<FestivalVO> list = festivalService.month();
		model.addAttribute("list", list);
		
		return "mongo";
	}
	
	//�썡蹂� 異뺤젣
	@RequestMapping(value = "/mongomonth.do")
	@ResponseBody
	public List<FestivalVO> month(Model model,String month) {
		System.out.println("FestivalController �뿉�꽌 month�슂泥�2");
		List<FestivalVO> list = festivalService.month(month);
	
		// 異뺤젣留덈떎 for臾� �룎湲�
		for (FestivalVO vo : list) {
			// 異뺤젣�뿉 �엳�뒗 ArrayList<Binary> image瑜�
			System.out.println(vo.get_id());
			ArrayList<String> imageList = new ArrayList<String>();
			for (Binary img : vo.getImage()) {
				String image = Base64.getEncoder().encodeToString(img.getData());
				imageList.add(image);
			}
			vo.setImages(imageList);
		}
		
		System.out.println("�굹�룄"+list);
		
		
		return list;
	}
	
	
	//�썡蹂� 異뺤젣
		@RequestMapping(value = "/mongomonths.do")
		public String month(Model model) {
			System.out.println("FestivalController �뿉�꽌 month�슂泥�");
			
			Calendar cal = Calendar.getInstance();
			
		//�쁽�옱�뀈,�썡, �씪 援ы븯湲�
			int year = cal.get ( cal.YEAR );
			int months = cal.get ( cal.MONTH ) + 1 ;
			int date = cal.get ( cal.DATE ) ;			
			String mon = Integer.toString(months);
			System.out.println(mon);
			List<FestivalVO> list = festivalService.month(mon);
		
			System.out.println("나나나나나"+ list);
			// 異뺤젣留덈떎 for臾� �룎湲�
			for (FestivalVO vo : list) {
				// 異뺤젣�뿉 �엳�뒗 ArrayList<Binary> image瑜�
				ArrayList<String> imageList = new ArrayList<String>();
				for (Binary img : vo.getImage()) {
					String image = Base64.getEncoder().encodeToString(img.getData());
					imageList.add(image);
				}
				vo.setImages(imageList);
			}
			
			System.out.println("�굹�룄"+list);
			String name = list.get(0).getFestival_name();
			String startdate = list.get(0).getStart_date();
			String enddate = list.get(0).getEnd_date();
			
			model.addAttribute("list",list);
			
			model.addAttribute("name", name);
			model.addAttribute("startdate", startdate);
			model.addAttribute("enddate", enddate);
			
			for(FestivalVO i:list) {
			System.out.println("여기는"+i.getFestival_name());
		}
			
			return "festival_reset";
		}
	
	
	
//	//�썡蹂� 異뺤젣
//		@RequestMapping(value = "/mongomonth.do")
//		@ResponseBody
//		public List<FestivalVO> months(Model model) {
//			System.out.println("FestivalController �뿉�꽌 month�슂泥�2");
//			List<FestivalVO> list = festivalService.months();
//		
//			
//			// 異뺤젣留덈떎 for臾� �룎湲�
//			for (FestivalVO vo : list) {
//				// 異뺤젣�뿉 �엳�뒗 ArrayList<Binary> image瑜�
//				ArrayList<String> imageList = new ArrayList<String>();
//				for (Binary img : vo.getImage()) {
//					String image = Base64.getEncoder().encodeToString(img.getData());
//					imageList.add(image);
//				}
//				vo.setImages(imageList);
//			}
//			
//			System.out.println("�굹�룄"+list);
//			
//			
//			return list;
//		}
	
	
	
	//異붿쿇異뺤젣
	@RequestMapping("value=/mongorecommand.do")
	@ResponseBody
	public List<FestivalVO> recommand(){
		List<FestivalVO> list = festivalService.recommand();
		
		return list;
	}
	
	
	//異뺤젣 �긽�꽭 �럹�씠吏� 異뺤젣 �젙蹂�
//	@RequestMapping(value = "/detail.do")
//	@ResponseBody
//	public List<FestivalVO> detail(Model model,String tel) {
//		System.out.println("FestivalController �뿉�꽌 detail�슂泥�");
//		List<FestivalVO> list = festivalService.detail(tel);
//		
//		System.out.println("detail()lists"+list);
//		
//		
//		
//		return list;
//	}
	
	
	//異뺤젣 �긽�꽭�럹�씠吏� 異뺤젣�젙蹂�
	@RequestMapping(value = "/details.do")
	public String details(Model model,int tel) {
		System.out.println(tel);
		System.out.println("FestivalController �뿉�꽌 details.do�슂泥�");
		List<FestivalVO> list = festivalService.detail(tel);
		
		// 異뺤젣留덈떎 for臾� �룎湲�
				for (FestivalVO vo : list) {
					// 異뺤젣�뿉 �엳�뒗 ArrayList<Binary> image瑜�
					ArrayList<String> imageList = new ArrayList<String>();
					for (Binary img : vo.getImage()) {
						String image = Base64.getEncoder().encodeToString(img.getData());
						imageList.add(image);
					}
					vo.setImages(imageList);
				}
		
		
		String[] adr = list.get(0).getAddress().split(" ");
		String addr = adr[1];
		
		
		
		
		
		
			
		
		model.addAttribute("list", list);
		
		
		return "festival_detail";
	}
	
	
}