package yjpack;

import java.util.Vector;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mypack.*;

public class Search implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		ActionForward forward = new ActionForward();
		//String id = request.getPrameter("id");
		request.setAttribute("list", null);
		
		forward.setRedirect(true);
		forward.setNextPage("Search.jsp");		
		
		return forward;
	}

}
