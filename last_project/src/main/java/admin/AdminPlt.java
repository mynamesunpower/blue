package main.java.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

/*public class admin_what{

    String cmd = "D:\\blue\\last_project\\WebContent";
    String py = "admin_plt";
    String run = "python  " +cmd+ py + ".py";
    System.out.println(run);
    //Runtime.getRuntime().exec(run);

    Process p = Runtime.getRuntime().exec("python  D:\\blue\\last_project\\WebContent admin_plt.py");
    
}*/

/*
 * @Controller public class AdminPlt {
 * 
 * private static PythonInterpreter interpreter;
 * 
 * @RequestMapping(value="admin/admin_plt.do") public static String
 * main(String[] args) {
 * 
 * interpreter = new PythonInterpreter(); System.out.println("1");
 * interpreter.execfile("admin_plt.py"); System.out.println("2");
 * interpreter.exec("da"); System.out.println("3");
 * 
 * return "admin/admin_plt"; }
 * 
 * }
 */

@Controller
public class AdminPlt {

	@GetMapping("admin/admin_what.do")
	public ModelAndView viewChart() {
		ModelAndView mv = new ModelAndView("admin/admin_what");
		final String uri = "http://localhost:5000/getBarChartBase64";
		RestTemplate restTemplate = new RestTemplate();
		String base64Img = restTemplate.getForObject(uri, String.class);
		mv.addObject("base64Img", base64Img);
		return mv;
	}

	@GetMapping("admin/admin_what2.do")
	public ModelAndView viewChart2() {
		ModelAndView mv = new ModelAndView("admin/admin_what2");
		final String uri = "http://localhost:5000/getPieChartBase64";
		final String uri2 = "http://localhost:5000/getBarChartBase64_2";
		RestTemplate restTemplate = new RestTemplate();
		String base64Img = restTemplate.getForObject(uri, String.class);
		String base64Img_2 = restTemplate.getForObject(uri2, String.class);
		mv.addObject("base64Img", base64Img);
		mv.addObject("base64Img_2", base64Img_2);
		return mv;
	}
	
	@GetMapping("admin/admin_what3.do")
	public ModelAndView viewChart3() {
		ModelAndView mv = new ModelAndView("admin/admin_what3");
		final String uri = "http://localhost:5000/getBarChartLodgment";
		final String uri2 = "http://localhost:5000/getBarChartRestaurant";
		final String uri3 = "http://localhost:5000/getBarChartFestival";
		RestTemplate restTemplate = new RestTemplate();
		String base64Img = restTemplate.getForObject(uri, String.class);
		String base64Img_2 = restTemplate.getForObject(uri2, String.class);
		String base64Img_3 = restTemplate.getForObject(uri3, String.class);
		mv.addObject("base64Img", base64Img);
		mv.addObject("base64Img_2", base64Img_2);
		mv.addObject("base64Img_3", base64Img_3);
		return mv;
	}

	
}
