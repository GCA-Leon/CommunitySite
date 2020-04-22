package mypack;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class Mail {
	
	final static String googleId="gwanglim77";//구글 아이디
	final static String googlePw="qwe13579";//구글 비밀번호
	final static String googleEmail="gwanglim77@gamil.com";//본인구글아이디@gmail.com 구글 이메일
	
	public void sendMail(String destinationMail, String title, String contents) {
		Properties prop = new Properties(); 
		prop.put("mail.smtp.host", "smtp.gmail.com"); 
		prop.put("mail.smtp.port", 465); 
		prop.put("mail.smtp.auth", "true"); 
		prop.put("mail.smtp.ssl.enable", "true"); 
		prop.put("mail.smtp.ssl.trust", "smtp.gmail.com");

		Session session = Session.getDefaultInstance(prop, new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(googleId, googlePw);
            }
        });

        try {        	
            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress(googleEmail));

            //수신자메일주소
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(destinationMail)); 

            // Subject
            message.setSubject(title); //메일 제목을 입력

            // Text
            message.setText(contents);    //메일 내용을 입력

            // send the message
            Transport.send(message); ////전송
            System.out.println("message sent successfully...");
        } catch (AddressException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (MessagingException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
	}
}
