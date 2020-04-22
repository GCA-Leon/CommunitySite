package mypack;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class FindIdEmail implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		ActionForward forward = new ActionForward();
		String email = request.getParameter("email");
		System.out.println("email : "+email);
		
		DAO dao = new DAO();
		boolean ck = dao.emailcheck(email);
		if(ck == true){
			System.out.println("존재하는 매일입니다.");
			Mail mail =new Mail();
			String title ="leon사이트입니다. 이메일 주소로 계정찾기";
			String id = dao.emailToID(email);
			String contents = "안녕하세요 leon입니다. 이메일로 계정 찾기입니다.\n회원님의 아이디는 "+id+"입니다.";
			mail.sendMail(email, title, contents);
		}
		request.setAttribute("ck", ck);
		request.setAttribute("userEmail", email);
		
		forward.setRedirect(false);
		forward.setNextPage("FindId.jsp");		
		return forward;	
	}

}
