package yjpack;

import java.util.Vector;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mypack.*;
public class Press implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		ActionForward forward = new ActionForward();
		
		SearchDAO dao = new SearchDAO();
		String boardname = request.getParameter("boardname");
		String Press = request.getParameter("press");
		int idx = Integer.parseInt(request.getParameter("idx"));
		int i = dao.favorite(boardname, Press,idx);

		Vector<SearchDTO> v = dao.CallPost(boardname, idx);
		Vector<SearchDTO> v2 = dao.boardlist(boardname,"null","null",1);
		request.setAttribute("posts", v);
		request.setAttribute("list", v2);
		request.setAttribute("boardname", boardname);

		
		
		forward.setRedirect(false);
		forward.setNextPage("post.jsp");
		
		return forward;
	}

}
