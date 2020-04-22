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
	
	final static String googleId="gwanglim77";//���� ���̵�
	final static String googlePw="qwe13579";//���� ��й�ȣ
	final static String googleEmail="gwanglim77@gamil.com";//���α��۾��̵�@gmail.com ���� �̸���
	
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

            //�����ڸ����ּ�
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(destinationMail)); 

            // Subject
            message.setSubject(title); //���� ������ �Է�

            // Text
            message.setText(contents);    //���� ������ �Է�

            // send the message
            Transport.send(message); ////����
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
