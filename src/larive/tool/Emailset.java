package larive.tool;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.mail.DefaultAuthenticator;
import org.apache.commons.mail.Email;
import org.apache.commons.mail.EmailException;
import org.apache.commons.mail.SimpleEmail;



public class Emailset {   
   public static String Emailkeys(HttpServletRequest request) throws EmailException {      
      String mailA = request.getParameter("Email");      
      Email email = new SimpleEmail();
      email.setHostName("smtp.gmail.com");
      email.setSmtpPort(587);
      email.setAuthenticator(new DefaultAuthenticator("larive82828282@gmail.com", "larive8282@"));
      email.setTLS(true);
      email.setFrom("larive82828282@gmail.com");
      
      //제목
      email.setSubject("Larive_test");
      
      
      
      email.setCharset("utf-8"); //인코딩(한글을 작성한 경우 필요)
      int aaa = (int)(Math.random()*1000000);
      
      //내용
      String keys= Integer.toString(aaa);         //인증번호
      String content = "인증번호 : " + keys;
      email.setMsg(content);
      //email.setContent(content,"text/html");      
      
      email.addTo(mailA); 
      email.send(); 
      
      return keys;
   
   }
}