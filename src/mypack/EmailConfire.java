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
			String title ="leon비밀번호 찾기의 인증번호 입니다."; 
			ConfireNum cn = new ConfireNum();
			String AuthenticationKey = cn.getConfireNum();
			String contents = "안녕하세요 leon입니다. 회원가입을 위한 이메일 인증 번호입니다.\n"+"인증번호:"+AuthenticationKey;
			mail.sendMail(email, title, contents);
			request.setAttribute("ck", true);
			request.setAttribute("attk", AuthenticationKey);//인증번호
			request.setAttribute("userEmail", email);
			String userId = dao.emailToID(email);
			request.setAttribute("userId", userId);
		}
		forward.setRedirect(false);
		forward.setNextPage("FindPw.jsp");	
		return forward;	
	}
	
}
