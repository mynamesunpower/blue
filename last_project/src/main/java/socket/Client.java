package main.java.socket;
//추가
import java.io.DataOutputStream;
//추가
import java.io.File;
//추가
import java.io.FileInputStream;
//추가
//import java.io.FileInputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetSocketAddress;
//추가
//import java.net.ServerSocket;
import java.net.Socket;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
 
public class Client {
  public static void main(String... args) {
    // 소켓을 선언한다.
    try (Socket client = new Socket()) {
      // 소켓에 접속하기 위한 접속 정보를 선언한다.
      InetSocketAddress ipep = new InetSocketAddress("127.0.0.1", 9999);
      // 소켓 접속!
      client.connect(ipep);
      // 소켓이 접속이 완료되면 inputstream과 outputstream을 받는다.
      try (OutputStream sender = client.getOutputStream(); InputStream receiver = client.getInputStream();) {
        // 메시지는 for 문을 통해 10번 메시지를 전송한다.
        
    	  ////////////////////////////////
//    	  ServerSocket ssock = new ServerSocket(9999);
//
//    	  Socket csock = null;
//
//    	  byte buffer[] = new byte[2048];
//
//
//    	  File imgfile = new File("testfile.png");
//
//    	  String flen = String.valueOf(imgfile.length());
//
//    	  // change "1234" to "0000001234", to make sure 10 size.
//
//    	  String header = "0000000000".substring(0, 10-flen.length()) + flen;
//
//    	  while ((csock = ssock.accept()) != null) {
//
//    	    FileInputStream fis = new FileInputStream(imgfile);
//
//    	    OutputStream os = csock.getOutputStream();
//
//    	    // send header
//
//    	    os.write(header.getBytes());
//
//    	    // send body
//
//    	    while (fis.available() > 0) {
//
//    	      int readsz = fis.read(buffer);
//
//    	      os.write(buffer, 0, readsz);
//
//    	    }
//
//    	    os.close();
//
//    	    fis.close();
//
//    	  }
    	  
    	  	int j;
    	    FileInputStream fis = new FileInputStream ("/path/to/your/image.jpg");

    	    Socket sock = new Socket("127.0.0.1", 9999);
    	    DataOutputStream os = new DataOutputStream(sock.getOutputStream());
    	    while ((j = fis.read()) > -1)
    	        os.write(j);

    	    fis.close();
    	    os.close();
    	    sock.close();
    	  
    	  ////////////////////////////////
    	  
    	  
    	  
    	  for (int i = 0; i < 10; i++) {
          // 전송할 메시지를 작성한다.
          String msg = "java test message - " + i;
          
          // string을 byte배열 형식으로 변환한다.
          byte[] data = msg.getBytes();
          // ByteBuffer를 통해 데이터 길이를 byte형식으로 변환한다.
          ByteBuffer b = ByteBuffer.allocate(4);
          // byte포멧은 little 엔디언이다.
          b.order(ByteOrder.LITTLE_ENDIAN);
          b.putInt(data.length);
          // 데이터 길이 전송
          sender.write(b.array(), 0, 4);
          // 데이터 전송
          sender.write(data);
          
          data = new byte[4];
          // 데이터 길이를 받는다.
          receiver.read(data, 0, 4);
          // ByteBuffer를 통해 little 엔디언 형식으로 데이터 길이를 구한다.
          ByteBuffer b2 = ByteBuffer.wrap(data);
          b2.order(ByteOrder.LITTLE_ENDIAN);
          int length = b2.getInt();
          // 데이터를 받을 버퍼를 선언한다.
          data = new byte[length];
          // 데이터를 받는다.
          receiver.read(data, 0, length);
          
          // byte형식의 데이터를 string형식으로 변환한다.
          msg = new String(data, "UTF-8");
          // 콘솔에 출력한다.
          System.out.println(msg);
        }
      }
    } catch (Throwable e) {
      e.printStackTrace();
    }
  }
}
