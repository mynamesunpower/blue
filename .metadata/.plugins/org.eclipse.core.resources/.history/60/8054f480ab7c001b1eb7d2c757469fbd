package main.java.controller;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;

import javax.servlet.http.HttpSession;

import org.apache.http.HttpHost;
import org.apache.http.HttpResponse;
import org.apache.http.auth.AuthScope;
import org.apache.http.auth.UsernamePasswordCredentials;
import org.apache.http.client.AuthCache;
import org.apache.http.client.CredentialsProvider;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.protocol.HttpClientContext;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.auth.BasicScheme;
import org.apache.http.impl.client.BasicAuthCache;
import org.apache.http.impl.client.BasicCredentialsProvider;
import org.apache.http.impl.client.DefaultHttpClient;
import org.bson.json.JsonObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import main.java.service.MemberServiceImpl;
import main.java.vo.MemberVO;

@Controller
@RequestMapping(value = "member/")
public class MemberController {

	@Autowired
	private MemberServiceImpl memberService;
	
	@Autowired
	BCryptPasswordEncoder passwordEncoder;
	
	// 회원가입 페이지
	@RequestMapping(value = "memberJoin.do")
	public String helloMember() {
		return "member/memberJoin";
	}
	
	
	// ID 중복 체크
	@RequestMapping(value = "idCheck.do", produces = "application/text;charset=utf-8")
	@ResponseBody
	public String idCheck(MemberVO vo) {
		
		System.out.println("ID Check AJAX -> " + vo.getId() + " 가 중복되는지 확인");
		
		int result = memberService.idCheck(vo);
		
		String message = "이미 사용 중인 아이디입니다.";
		
		if (result == 0) {
			message = "사용 가능한 아이디입니다.";
		}
		
		return message;
	}
	
	// 문자메시지 전송
	@RequestMapping("sendSms.do")
	@ResponseBody
	public String sendSms(String receiver, HttpSession session) {
		
		System.out.println(receiver);
		
		// 6자리 인증 코드 생성 
		int rand = (int) (Math.random() * 899999) + 100000; 
		
		// 인증 코드를 데이터베이스에 저장하는 코드는 생략
		String message = "[축축빵빵] 본인 확인 인증번호 [" + rand + "]를 화면에 입력해주세요.";

		// 문자 보내기 
		String hostname = "api.bluehouselab.com"; 
		String url = "https://" + hostname + "/smscenter/v1.0/sendsms";
		CredentialsProvider credsProvider = new BasicCredentialsProvider();
		credsProvider.setCredentials(new AuthScope(hostname, 443, AuthScope.ANY_REALM),

		// 청기와랩에 등록한 Application Id 와 API key 를 입력합니다.
		new UsernamePasswordCredentials("blue", "5e575f4a775511eb8a4d0cc47a1fcfae"));
		
		AuthCache authCache = new BasicAuthCache(); 
		authCache.put(new HttpHost(hostname, 443, "https"), new BasicScheme());
		
		HttpClientContext context = HttpClientContext.create(); 
		context.setCredentialsProvider(credsProvider);
		context.setAuthCache(authCache); 
		
		DefaultHttpClient client = new DefaultHttpClient(); 
		
		try { 
			HttpPost httpPost = new HttpPost(url);
			httpPost.setHeader("Content-type", "application/json; charset=utf-8"); 

		//문자에 대한 정보 
		String json = "{\"sender\":\"010-9139-2436\",\"receivers\":[\"" + receiver + "\"],\"content\":\"" + message + "\"}";
		
		StringEntity se = new StringEntity(json, "UTF-8"); 
		httpPost.setEntity(se);
		
		HttpResponse httpResponse = client.execute(httpPost, context); 
		
		InputStream inputStream = httpResponse.getEntity().getContent(); 
		System.out.println(inputStream);
		
		if (inputStream != null) { 
			BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
			String line = "";

			while ((line = bufferedReader.readLine()) != null)
				System.out.println("문자 전송");
				inputStream.close();
			}
		} catch (Exception e) {
			System.err.println("Error: " + e.getLocalizedMessage());
		} finally {
			session.setAttribute("verify", Integer.toString(rand));
			client.getConnectionManager().shutdown();
		} 
		return Integer.toString(rand); 
	
	
	}
	
	// 인증번호 확인
	@ResponseBody
	@RequestMapping("/smsCheck.do")
	public String smsCheck(String code, HttpSession session) {
		//String saveCode = "디비";//데이터베이스에 저장된 코드 불러오기
		String rand = (String)session.getAttribute("verify");
		String result = code.equals(rand)? "ok" : "no"; 
		session.removeAttribute("verify");
			
		return result;
	}
	
	
	// 회원가입 요청
	@RequestMapping(value = "memberRegister.do")
	@ResponseBody
	public String memberRegister(MemberVO vo, HttpSession session) {
		
		System.out.println("--- 회원가입 요청 ---");
		System.out.println(vo.getId() + " | " + vo.getPassword() + " | " + vo.getAddress());
		System.out.println(vo.getName() + " | " + vo.getTel() + " | " + vo.getEmail() + " | " + vo.getBirthday());
		
		String inputPassword = vo.getPassword();
		session.setAttribute("inputPassword", inputPassword);
		
		String password = passwordEncoder.encode(inputPassword);
		System.out.println("암호화된 비밀번호: " + password);
		vo.setPassword(password);
		
		// 회원가입
		int result = memberService.memberInsert(vo);
		memberLogin(vo, session);
		return Integer.toString(result);
	}
	
	// 로그인
	@RequestMapping(value = "memberLogin.do")
	@ResponseBody
	public String memberLogin(MemberVO vo, HttpSession session) {
		
		System.out.println(vo.getId() + "/" + vo.getPassword());
		String inputPassword;
		
		if (session.getAttribute("inputPassword") == null) {
			inputPassword = vo.getPassword();
		}
		else {
			inputPassword = (String) session.getAttribute("inputPassword");
			session.removeAttribute("inputPassword");
		}
		
		MemberVO result = memberService.memberLogin(vo);
		if (result.getPassword() != null) {
			
			System.out.println(inputPassword + "/"+ result.getPassword());
			boolean passwordMatch = passwordEncoder.matches(inputPassword, result.getPassword());
			String message = "1";
			System.out.println(passwordMatch);
			
			if (!passwordMatch) {
				message = "0";
			}
			else {
				session.removeAttribute("memberId");
				session.setAttribute("memberId", result.getId());
			}
			
			return message;
		}
		else {
			
			return "0";
		}
		
		
//		return "redirect:index.jsp";

		
// 왜 안되지		
//		MemberVO result = memberService.memberLogin(vo);
//		if(result==null || result.getId()==null) {
//	         return "0"; 
//	   }else {
//	      session.setAttribute("memberId", result.getId());   
//	         return "1";
//	      }
	}
	
	
	@RequestMapping("mainAfterLogin.do")
	public String mainAfterLogin() {
		System.out.println("mainAfterLogin.do 요청");
		return "member/mainAfterLogin";
	}
}
