package main.java.controller.kakao;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;




@Controller
public class KakaoLoginController {

	httpConnection conn = httpConnection.getInstance();
	
	@Autowired
	private KakaoService kakaoService;
	
	
	//카카오 로그인
	  @RequestMapping("/login2.do")
	    public String home(@RequestParam(value = "code", required = false) String code, Model model,HttpSession session) throws Exception{
		  
		  System.out.println("kakaoLoginController 에서 login2.do 요청");
		  
	        System.out.println("#########" + code);
	        String access_Token = kakaoService.getAccessToken(code);
	        HashMap<String, Object> userInfo = kakaoService.getUserInfo(access_Token);
	        System.out.println("###access_Token#### : " + access_Token);
	        System.out.println("###userInfo#### : " + userInfo.get("email"));
	        System.out.println("###nickname#### : " + userInfo.get("nickname"));
	        System.out.println("###profile_image#### : " + userInfo.get("profile_image"));
	        
	        session.setAttribute("access_Token", access_Token);
	        session.setAttribute("memberId",userInfo.get("email"));
	        System.out.println(access_Token);
	        session.setAttribute("kakaonickname", userInfo.get("nickname"));
	        
	        
	        return "redirect:main.jsp";
	    }
	  
	  
	  //아직 구현 안되는거 같음
	  @RequestMapping(value="/kakaologout.do")
	    public String logout(HttpSession session) {
		  System.out.println("kakao 로그아웃");
		  System.out.println("--------------------------");
	    	System.out.println((String)session.getAttribute("access_Token"));
	    	System.out.println("--------------------------");
		  kakaoService.kakaoLogout((String)session.getAttribute("access_Token"));
	    	
		  System.out.println((String)session.getAttribute("access_Token"));
	        System.out.println((String)session.getAttribute("access_Token"));
	        session.removeAttribute("access_Token");
	        session.removeAttribute("userId");
	        System.out.println((String)session.getAttribute("access_Token"));
	        System.out.println((String)session.getAttribute("access_Token"));
	        session.invalidate();
	        return "redirect:main.jsp";
	    }
	  
//	  @RequestMapping(value="/kakaologout.do")
//	    public String logout(HttpSession session) {
//		  session.invalidate();
//		  return "redirect:main.jsp";
//	    }
	  
//	  @RequestMapping(value="/kakaologout.do")
//		public String access(HttpSession session) throws IOException {
//			
//			//String access_tokens = (String)session.getAttribute("access_token");
//		   String access_tokens = (String) session.getAttribute("access_Token");
//		  System.out.println("로그아웃 호출:"+access_tokens);
//			Map<String, String> map = new HashMap<String, String>();
//			map.put("Authorization", "Bearer "+ access_tokens);
//			
//		
//			String result = conn.HttpPostConnection("https://kapi.kakao.com", map).toString();
//			System.out.println(result);
//			
//			return "redirect:main.jsp";
//		}
	  	  

}



