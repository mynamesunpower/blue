package main.java.controller;

import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ChatController {

	// User의 고객센터 1:1 채팅 입장 요청
	@RequestMapping(value = "CustomerService/memberChat.do") 
	public String chat() {
		System.out.println("chat 뷰 요청");
		return "CustomerService/memberChat";
	}
	
	
	// Admin의 고객센터 1:1 채팅 입장 요청
	@RequestMapping(value = "admin/adminChat.do") 
	public String adminChat() {
		System.out.println("adminChat 뷰 요청");
		return "admin/adminChat";
	}
	
	
}
