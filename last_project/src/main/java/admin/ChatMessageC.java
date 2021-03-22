package main.java.admin;

//Ŭ���̾�Ʈ

//step3
//���̵�� ��ȭ�� �޽����� ������
import java.io.*;
import java.net.*;
import java.util.StringTokenizer;
import java.awt.*;
import java.awt.event.*;

public class ChatMessageC extends Frame implements ActionListener, KeyListener {
	
TextArea display;
TextField wtext, ltext;
Label mlbl, wlbl, loglbl;
BufferedWriter output;
BufferedReader input;
Socket client;
StringBuffer clientdata = new StringBuffer(2048);
String serverdata;
String ID,logm;
private Button logout;
	
private static final String SEPARATOR = "|";
private static final int REQ_LOGON = 1001;
private static final int REQ_SENDWORDS = 1021;
private static final int REQ_LOGOUT = 1004;
	
public ChatMessageC() {
   super("Ŭ���̾�Ʈ");
   
   Panel northp =  new Panel(new BorderLayout());
   mlbl = new Label("ä�� ���¸� �����ݴϴ�.");
   logout = new Button("�α׾ƿ�");
   logout.setVisible(false);
   logout.addActionListener(this);
   northp.add(mlbl,BorderLayout.WEST);
   northp.add(logout,BorderLayout.EAST);
   add(northp, BorderLayout.NORTH);

   display = new TextArea("", 0, 0, TextArea.SCROLLBARS_VERTICAL_ONLY);
   display.setEditable(false);
   
   add(display, BorderLayout.CENTER);

   Panel ptotal = new Panel(new BorderLayout());

   Panel pword = new Panel(new BorderLayout());
   wlbl = new Label("��ȭ��");
   wtext = new TextField(30); //������ �����͸� �Է��ϴ� �ʵ�
   wtext.addKeyListener(this); //�Էµ� �����͸� �۽��ϱ� ���� �̺�Ʈ ����
   pword.add(wlbl, BorderLayout.WEST);
   pword.add(wtext, BorderLayout.EAST);
   ptotal.add(pword, BorderLayout.CENTER);
   

   Panel plabel = new Panel(new BorderLayout());
   loglbl = new Label("�α׿�");
   ltext = new TextField(30); //������ �����͸� �Է��ϴ� �ʵ�
   ltext.addActionListener(this); //�Էµ� �����͸� �۽��ϱ� ���� �̺�Ʈ ����
   plabel.add(loglbl, BorderLayout.WEST);
   plabel.add(ltext, BorderLayout.EAST);
   ptotal.add(plabel, BorderLayout.SOUTH);

   add(ptotal, BorderLayout.SOUTH);

   addWindowListener(new WinListener());
   setSize(300,250);
   setVisible(true);
}
	
public void runClient() {
   try {
      client = new Socket(InetAddress.getLocalHost(), 5000);
      
      mlbl.setText("����� �����̸� : " + client.getInetAddress().getHostName());
      input = new BufferedReader(new InputStreamReader(client.getInputStream()));
      output = new BufferedWriter(new OutputStreamWriter(client.getOutputStream()));
      //clientdata = new StringBuffer(2048);
      mlbl.setText("���� �Ϸ� ����� ���̵� �Է��ϼ���.");
      while(true) {
         serverdata = input.readLine();
         display.append(serverdata+"\r\n");
      }
   } catch(IOException e) {
      e.printStackTrace();
   }
}
		
public void actionPerformed(ActionEvent ae){
	  ID = ltext.getText();
	  
	  if(ae.getSource() == ltext){
		  if(ID.equals("") != true) {
			  logout.setVisible(true);
			  mlbl.setText(ID + "(��)�� �α��� �Ͽ����ϴ�.");
			  try {
				  clientdata.setLength(0);
				  clientdata.append(REQ_LOGON);
				  clientdata.append(SEPARATOR);
				  clientdata.append(ID);
				  clientdata.append(SEPARATOR);
				  clientdata.append("(��)�� �α��� �Ͽ����ϴ�.");
				  output.write(clientdata.toString()+"\r\n");
				  output.flush();
				  ltext.setVisible(false);
			  } catch(Exception e) {
				  e.printStackTrace();
			  }
		  } else {
 	  mlbl.setText("�ٽ� �α��� �ϼ���!!!");
		  }
	  }

	  else if(ae.getSource()==logout) {
 	  mlbl.setText("ä�� ���¸� �����ݴϴ�.");
 	  logout.setVisible(false);
 	  try {
 	  ltext.setText("");
 	  clientdata.setLength(0);
       clientdata.append(REQ_LOGOUT);
       clientdata.append(SEPARATOR);
       clientdata.append(ID);
       clientdata.append(SEPARATOR);
       clientdata.append("��(��) �α׾ƿ��Ͽ����ϴ�.");
       output.write(clientdata.toString() +"\r\n");
       output.flush();
 	  ltext.setVisible(true);
 	  }catch(Exception e) {
 		  e.printStackTrace();
 	  }
	  }
}
	
public static void main(String args[]) {
   ChatMessageC c = new ChatMessageC();
   c.runClient();
}
		
class WinListener extends WindowAdapter {        //â�� �����µ� �α׾ƿ��� �� ���¸� ����������.
   public void windowClosing(WindowEvent e){
 	  try {
 		  ltext.setText("");
     	  clientdata.setLength(0);
           clientdata.append(REQ_LOGOUT);
           clientdata.append(SEPARATOR);
           clientdata.append(ID);
           clientdata.append(SEPARATOR);
           clientdata.append("��(��) �α׾ƿ��Ͽ����ϴ�.");
           output.write(clientdata.toString() +"\r\n");
           output.flush();
     	  ltext.setVisible(true);
     	  }catch(Exception e2) {
     		  e2.printStackTrace();
     	  }
      System.exit(0);
   }
}

public void keyPressed(KeyEvent ke) {
   if(ke.getKeyChar() == KeyEvent.VK_ENTER) {
      String message = new String();
      message = wtext.getText();
      if (ID == null) {
         mlbl.setText("�ٽ� �α��� �ϼ���!!!");
         wtext.setText("");
      } else {
         try {
            clientdata.setLength(0);
            clientdata.append(REQ_SENDWORDS);
            clientdata.append(SEPARATOR);
            clientdata.append(ID);
            clientdata.append(SEPARATOR);
            clientdata.append(message);
            output.write(clientdata.toString()+"\r\n");
            output.flush();
            wtext.setText("");
         } catch (IOException e) {
            e.printStackTrace();
         }
      }
   }
}

public void keyReleased(KeyEvent ke) {
}

public void keyTyped(KeyEvent ke) {
}
}