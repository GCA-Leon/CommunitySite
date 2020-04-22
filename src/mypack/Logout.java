package mypack;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Logout implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		ActionForward forward = new ActionForward();
		request.setAttribute("loginck", false);
		//System.out.println("¿©±â¿À³ª¿è??");
		forward.setRedirect(false);
		forward.setNextPage("Main.jsp");
		return forward;
	}
	
}
