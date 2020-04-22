package yjpack;

import java.util.Vector;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mypack.*;

public class SearchAction implements Action{


	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		ActionForward forward = new ActionForward();
		//String id = request.getPrameter("id");
		SearchDAO dao = new SearchDAO();
		
		String category = request.getParameter("sc");
		String keyword = request.getParameter("keyword");
		int pages = Integer.parseInt(request.getParameter("pages"));
		pages = (pages-1)*20;
		Vector<SearchDTO> v = dao.search(category, keyword,pages);
		request.setAttribute("list", v);
		
		forward.setRedirect(false);
		forward.setNextPage("Search.jsp");		
		
		return forward;
	}
	
}
