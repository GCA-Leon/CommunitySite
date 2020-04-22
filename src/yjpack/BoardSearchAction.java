package yjpack;

import java.util.Vector;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mypack.*;
public class BoardSearchAction implements Action{


	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		ActionForward forward = new ActionForward();
		//String id = request.getPrameter("id");
		SearchDAO dao = new SearchDAO();
		String boardname = request.getParameter("boardname");
		String category = request.getParameter("sc");
		String keyword = request.getParameter("keyword");
		int pages = Integer.parseInt(request.getParameter("pages"));
		pages = (pages-1)*20;
		Vector<SearchDTO> v = dao.boardlist(boardname,category, keyword, pages);
		request.setAttribute("list", v);
		request.setAttribute("boardname", boardname);
		forward.setRedirect(false);
		forward.setNextPage("board.jsp");		
		
		return forward;
	}
	
}
