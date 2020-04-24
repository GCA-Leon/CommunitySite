package yjpack;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mypack.Action;
import mypack.ActionForward;

public class DeleteAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		ActionForward forward = new ActionForward();
		String boardname = request.getParameter("boardname");
		int idx = Integer.parseInt(request.getParameter("idx"));
		SearchDAO dao = new SearchDAO();
		
		int i = dao.Delete(boardname, idx);
		if(i>0){
			System.out.println("게시글 삭제 성공");
			
		}
		else{
			System.out.println("게시글 삭제 실패");
		}
		forward.setRedirect(false);
		forward.setNextPage("BoardSearchAction.do?boardname="+boardname+"&sc=null&keyword=null&pages=1");
		return forward;
	}
}
