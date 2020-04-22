package mypack;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class NickCheckPage implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String nick = request.getParameter("nick");
		DAO dao = new DAO();
		boolean ck = dao.nickcheck(nick);
		request.setAttribute("ck", ck);
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setNextPage("nickcheck.jsp");
		return forward;
	}

}
