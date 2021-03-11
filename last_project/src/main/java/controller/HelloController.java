package main.java.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import main.java.admin.ChatMessageC;

@Controller
public class HelloController {

//	// �뼱�뵒�뱺 蹂대궡踰꾨젮
//	@RequestMapping(value="/{path}")
//	public String hello(@PathVariable String path) {
//		
//		System.out.println("[HelloController > " + path + " �슂泥�]");
//
//		return path;
//	}
//	
	
	// �뿉�윭
	@RequestMapping(value="error.do")
	public String error() {
		
		ChatMessageC c = new ChatMessageC();
		c.runClient();
		
		System.out.println("[�뿉�윭 諛쒖깮: �뿉�윭 �럹�씠吏�濡� �씠�룞]");
		
		return "error";
		
	}
	
}
