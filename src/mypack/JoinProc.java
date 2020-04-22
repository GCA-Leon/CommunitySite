package mypack;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class JoinProc implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		ActionForward forward = new ActionForward();
		System.out.println("여기까진 오지?");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String nick = request.getParameter("nick");
		String email = request.getParameter("email");
		
		DAO dao = new DAO();
		dao.insertMember(id, pw, nick, email);		
		
		forward.setRedirect(true);
		forward.setNextPage("SucessUpdate.jsp");
		return forward;
	}
	
}
