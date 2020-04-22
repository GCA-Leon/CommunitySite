package yjpack;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mypack.*;

public class WriteAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = new ActionForward();
		request.setCharacterEncoding("UTF-8");
		//세션도 추가
		SearchDAO dao = new SearchDAO();
		String boardname = request.getParameter("boardname");		
		String title = request.getParameter("title");
		String contents = request.getParameter("contents");
		String comments = "";
		String writer = request.getParameter("writer");
		
		System.out.println("boardname: "+boardname);
		System.out.println("title: "+title);
		System.out.println("contents: "+contents);
		System.out.println("writer: "+writer);
		
		int i = dao.Write(boardname, title,writer,contents, comments);
		if(i>0){
			System.out.println("게시글 작성 성공");
			
		}
		else{
			System.out.println("게시글 작성 실패");
		}
		request.setAttribute("boardname",boardname);
		
		forward.setRedirect(false);
		forward.setNextPage("BoardSearchAction.do?boardname="+boardname+"&sc=null&keyword=null&pages=1");
		
		return forward;
	}

}
