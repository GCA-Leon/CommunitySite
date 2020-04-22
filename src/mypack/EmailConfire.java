package mypack;

import java.util.Random;

import javax.mail.Session;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class EmailConfire implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		ActionForward forward = new ActionForward();
		String email = request.getParameter("email");
		System.out.println("getparameter(email) : "+email);
		DAO dao = new DAO();
		boolean ck = dao.emailcheck(email);
		System.out.println("ck : "+ck);
		if(ck == true){
			Mail mail =new Mail();
			String title ="leon��й�ȣ ã���� ������ȣ �Դϴ�."; 
			ConfireNum cn = new ConfireNum();
			String AuthenticationKey = cn.getConfireNum();
			String contents = "�ȳ��ϼ��� leon�Դϴ�. ȸ�������� ���� �̸��� ���� ��ȣ�Դϴ�.\n"+"������ȣ:"+AuthenticationKey;
			mail.sendMail(email, title, contents);
			request.setAttribute("ck", true);
			request.setAttribute("attk", AuthenticationKey);//������ȣ
			request.setAttribute("userEmail", email);
			String userId = dao.emailToID(email);
			request.setAttribute("userId", userId);
		}
		forward.setRedirect(false);
		forward.setNextPage("FindPw.jsp");	
		return forward;	
	}
	
}
