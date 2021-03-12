package main.java.admin;

import java.io.*;
import java.net.*;
import java.util.*;
import java.util.List;
import java.awt.*;
import java.awt.event.*;

public class ChatMessageS extends Frame {
   TextArea display;
   Label info;
   List<ServerThread> list;
	
   public ServerThread SThread;
	
   public ChatMessageS() {
      super("서버");
      info = new Label();
      add(info, BorderLayout.CENTER);
      display = new TextArea("", 0, 0, TextArea.SCROLLBARS_VERTICAL_ONLY);
      display.setEditable(false);
      add(display, BorderLayout.SOUTH);
      addWindowListener(new WinListener());
      setSize(300,250);
      setVisible(true);
   }
	
   public void runServer() {
      ServerSocket server;
      Socket sock;
      //ServerThread SThread;
      try {
         list = new ArrayList<ServerThread>();
         server = new ServerSocket(5000, 100);
         try {
            while(true) {
               sock = server.accept();
 //              SThread = new ServerThread(this, sock, display, info);
               SThread = new ServerThread(this, sock, display);
               SThread.start();
               info.setText(sock.getInetAddress() + " 서버는 클라이언트와 연결됨");
               //info.setText(sock.getInetAddress().getHostName() + " 서버는 클라이언트와 연결됨");
            }
         } catch(IOException ioe) {
            server.close();
            ioe.printStackTrace();
         }
      } catch(IOException ioe) {
         ioe.printStackTrace();
      }
   }
		
   public static void main(String args[]) {
      ChatMessageS s = new ChatMessageS();
      s.runServer();
   }
		
   class WinListener extends WindowAdapter {
      public void windowClosing(WindowEvent e) {
    	  
         System.exit(0);
      }
   }
}

class ServerThread extends Thread {
   Socket sock;
   BufferedWriter output;
   BufferedReader input;
   TextArea display;
   Label info;
   TextField text;
   String clientdata;
//   String serverdata = "";
   ChatMessageS cs;
	
   private static final String SEPARATOR = "|";
   private static final int REQ_LOGON = 1001;
   private static final int REQ_SENDWORDS = 1021;
   private static final int LOGOUT = 1004;
	
//   public ServerThread(ChatMessageS c, Socket s, TextArea ta, Label l) {
   public ServerThread(ChatMessageS c, Socket s, TextArea ta) {
      sock = s;
      display = ta;
 //     info = l;
      cs = c;
      try {
         input = new BufferedReader(new InputStreamReader(sock.getInputStream()));
         output = new BufferedWriter(new OutputStreamWriter(sock.getOutputStream()));
      } catch(IOException ioe) {
         ioe.printStackTrace();
      }
   }
   public void run() {
    //  cs.list.add(this);
      try {
         while((clientdata = input.readLine()) != null) {
            StringTokenizer st = new StringTokenizer(clientdata, SEPARATOR);
            int command = Integer.parseInt(st.nextToken());
            int cnt = cs.list.size();
            switch(command) {             //-->로그온 한 애들만 메세지를 보냄
               case REQ_LOGON : { // “1001|아이디”를 수신한 경우
            	   cs.list.add(this);    
                  String ID = st.nextToken();
                  String logms = st.nextToken();
                  display.append("클라이언트가 " + ID);
                  display.append(logms+"\r\n");
                  break;
               }
               case REQ_SENDWORDS : { // “1021|아이디|대화말”를 수신
                  String ID = st.nextToken();
                  String message = st.nextToken();
                  display.append(ID + " : " + message + "\r\n");
                  for(int i=0; i<cnt; i++) { // 모든 클라이언트에 전송
                     ServerThread SThread = (ServerThread)cs.list.get(i);
                     SThread.output.write(ID + " : " + message + "\r\n");
                     SThread.output.flush();
                  }  
                  break;
               }
               case LOGOUT : {  // 1004|아이디 로그아웃
            	   cs.list.remove(this);     //로그아웃시 소켓 해제
            	   String ID = st.nextToken();
                   String logms = st.nextToken();
                   display.append("클라이언트가 " + ID);
                   display.append(logms+"\r\n");
                   break; 	   
               }
            }
         }
      } catch(IOException e) {
         e.printStackTrace();
      }
      cs.list.remove(this);
      try{
         sock.close();
      }catch(IOException ea){
         ea.printStackTrace();
      }
   }
}