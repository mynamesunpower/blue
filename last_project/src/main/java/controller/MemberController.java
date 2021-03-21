package main.java.controller;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.Properties;
import java.util.Random;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
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

	private final String user = "bitter.lemonseed@gmail.com";
	private final String pass = "java12345!";

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

		String email = vo.getEmail();
		String inputPassword = vo.getPassword();
		session.setAttribute("inputPassword", inputPassword);

		String password = passwordEncoder.encode(inputPassword);
		System.out.println("암호화된 비밀번호: " + password);
		vo.setPassword(password);

		// 회원가입
		int result = memberService.memberInsert(vo);

		String title = "[축축빵빵] " + vo.getName() + " 님의 회원가입을 환영합니다.";
		String mailTxt = "";
        mailTxt += "안녕하세요. 전 국민 페스티벌 플랫폼!\n";
        mailTxt += "!! 축축빵빵 !! 입니다. \n";
        mailTxt += "회원가입을 축하드리며, 즐거운 축제 잘 다녀오시길 바랍니다. \n";
        mailTxt += "감사합니다. 즐거운 하루 되세요.\n";

		sendEmail(vo, title, mailTxt);

		memberLogin(vo, session);
		return Integer.toString(result);
	}

	// 로그인
	@RequestMapping(value = "memberLogin.do")
	@ResponseBody
	public String memberLogin(MemberVO vo, HttpSession session) {

		System.out.println(vo.getId() + "/" + vo.getPassword());

		// 유저가 입력한 비밀번호
		String inputPassword;

		// 일반적인 로그인 시도라면 (세션에 inputPassword가 없다면)
		if (session.getAttribute("inputPassword") == null) {
			inputPassword = vo.getPassword();
		}
		// 회원가입하고 로그인 시도라면 (세션에 inputPassword를 잠시 넣어둠, 1회성)
		else {
			inputPassword = (String) session.getAttribute("inputPassword");

			// 바로 제거해준다
			session.removeAttribute("inputPassword");
		}


		// DB에서 정보를 확인한다. id로 검색하여 SELECT *을 검색. 비번 일치 여부는 뒤에서 확인.
		MemberVO result = memberService.memberLogin(vo);
		
		if (result == null) {
			return "";
		}

		// TODO result.getPassword() null이면 널포인터인데. 이거 어떻게 막지.
		boolean passwordMatch = passwordEncoder.matches(inputPassword, result.getPassword());


		String message = "1";
		System.out.println(passwordMatch);

		// 실패(false)라면 message는 0
		if (!passwordMatch) {

			message = "0";

		}
		// 성공이라면
		else {
			// id에 admin 들어가있다면? 관리자 TODO 추후 회원가입때 admin 단어 못쓰도록 막아야함, (정규식)
			if (result.getId().contains("admin")){
				System.out.println("관리자 접근");
				session.setAttribute("adminName", result.getName());
				return "admin";
			}

			session.removeAttribute("memberId");
			session.setAttribute("memberId", result.getId());
		}

		return message;
	}


	// 로그아웃
	@RequestMapping("/logout.do")
	public String logout(String code, HttpSession session) {

		System.out.println("MemberController 에서 logout.do 요청");

		// 세션 만료
		session.invalidate();

		return "redirect:../main.jsp";
	}


    // 비밀번호 찾기 -> 메일로 보내기
    @RequestMapping(value = "/memberPassFind.do", produces = "application/text;charset=utf-8")
    @ResponseBody
    public String memberPassFind(MemberVO vo) {

    	System.out.println(vo.getEmail());

        MemberVO member = memberService.memberPassFind(vo);

        // 난수 비밀번호 생성 (12자)
        StringBuffer temp = new StringBuffer();
        Random rnd = new Random();
        for (int i = 0; i < 12; i++) {
            int rIndex = rnd.nextInt(3);
            switch (rIndex) {
            case 0:
                // a-z
                temp.append((char) ((int) (rnd.nextInt(26)) + 97));
                break;
            case 1:
                // A-Z
                temp.append((char) ((int) (rnd.nextInt(26)) + 65));
                break;
            case 2:
                // 0-9
                temp.append((rnd.nextInt(10)));
                break;
            }
        }
        String password = temp.toString();

        // 암호화해서 재지정
        member.setPassword(passwordEncoder.encode(password));
        memberService.memberUpdate(member);

        String title = "[축축빵빵] " + member.getName() + "님의 비밀번호 재설정 안내";
        String mailTxt = "";
        mailTxt += "안녕하세요. 전 국민 페스티벌 플랫폼!\n";
        mailTxt += "!! 축축빵빵 !! 입니다. \n";
        mailTxt += member.getName() + " 회원님의 비밀번호는 \n";
        mailTxt += password + "로 초기화되었습니다. \n";
        mailTxt += "변경된 비밀번호로 로그인하시고, 새로운 비밀번호로 변경을 부탁드립니다. \n";
        mailTxt += "감사합니다. 즐거운 하루 되세요.\n";

        sendEmail(vo, title, mailTxt);

        System.out.println("나의 패스워드: " + password);

        String returnmsg = "고객님의 임시 비밀번호를 입력하신 메일로 발송했습니다. 리다이렉트됩니다./";

        return returnmsg + vo.getEmail();
    } // end of memberPassFind()


    // 메일 보내기.
    public void sendEmail(MemberVO vo, String title, String mailTxt) {

    	String email = vo.getEmail();

        Properties prop = new Properties();
        prop.put("mail.smtp.host", "smtp.gmail.com"); // 이메일을 처리해줄 SMTP 서버
        prop.put("mail.smtp.port", 465); // 구글 465 // naver 587
        prop.put("mail.smtp.auth", "true");
        prop.put("mail.smtp.ssl.enable", "true");
        prop.put("mail.smtp.ssl.trust", "smtp.gmail.com");

        Session session = Session.getDefaultInstance(prop, new javax.mail.Authenticator(){
            protected PasswordAuthentication getPasswordAuthentication(){
                return new PasswordAuthentication(user, pass);
            }
        });

        try {
            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress("chookchook@festi.val"));
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(email));
            message.setSubject(title);

            message.setText(mailTxt);

            Transport.send(message);
            System.out.println("메일을 성공적으로 보냈습니다.");

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    @RequestMapping(value = "memberModify.do")
    @ResponseBody
    public int modify(MemberVO vo) {
    	
    	System.out.println(vo.getId() + "/" + vo.getName());
    	int result = memberService.memberUpdateMypage(vo);
    	System.out.println("업데이트 완료");
    	
    	return result;
    }

}
