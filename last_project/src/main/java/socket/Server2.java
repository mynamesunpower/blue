package main.java.socket;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.ServerSocket;
import java.net.Socket;
public class Server2 {
	public static void main(String[] args) {
		while(true) {
			try {
				ServerSocket serverSocket = null;
				serverSocket = new ServerSocket(8112);  // 포트번호 설정 및 소켓 생성
				System.out.println("접속 대기중...");
				Socket socket = serverSocket.accept();  
				System.out.println("클라이언트 접속");

				BufferedReader br = new BufferedReader(
						new InputStreamReader(socket.getInputStream(),"UTF-8"));


				String rev = br.readLine();  // 클라이언트에서 보내오 데이터 rev에 저장
				System.out.println(rev);


				br.close();
				socket.close();
				serverSocket.close();
				System.out.println("종료");
			} catch(IOException e) {
				e.printStackTrace();
			}
		}
	}
}
