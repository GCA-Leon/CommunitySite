package yjpack;

import java.util.Vector;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mypack.*;
public class PostAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		ActionForward forward = new ActionForward();
		request.setCharacterEncoding("UTF-8");
		
		SearchDAO dao = new SearchDAO();
		String boardname = request.getParameter("boardname");
		int idx = Integer.parseInt(request.getParameter("idx"));
		String nickname = request.getParameter("nickname"); 
		//System.out.println("positionAction : "+nickname);
		
		Vector<SearchDTO> v = dao.CallPost(boardname, idx);
		Vector<SearchDTO> v2 = dao.boardlist(boardname,"null","null",1);
		request.setAttribute("posts", v);
		request.setAttribute("list", v2);
		request.setAttribute("boardname", boardname);
		request.setAttribute("loginUserNickname",nickname);
		
		forward.setRedirect(false);
		forward.setNextPage("post.jsp");
		
		return forward;
	}

}
