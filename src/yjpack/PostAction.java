package yjpack;

import java.io.*;
import java.util.Vector;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mypack.*;
public class PostAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		ActionForward forward = new ActionForward();
		
		SearchDAO dao = new SearchDAO();
		String boardname = request.getParameter("boardname");
		int idx = Integer.parseInt(request.getParameter("idx"));
		
		Vector<SearchDTO> v = dao.CallPost(boardname, idx);
		Vector<SearchDTO> v2 = dao.boardlist(boardname,"null","null",1);
		request.setAttribute("posts", v);
		request.setAttribute("list", v2);
		request.setAttribute("boardname", boardname);
		request.setAttribute("idx",idx);
		forward.setRedirect(false);
		forward.setNextPage("post.jsp");
		

		File CommentFile = new File("C:/Users/user/Desktop/CommentList/"+boardname+"/"+idx+".txt");
		
		FileWriter fw = null;
		if(!CommentFile.exists()){
		try{
			fw = new FileWriter(CommentFile);
			fw.write("");
			
		}catch(Exception e){
			e.printStackTrace();
		}finally {
			fw.close();
		}
		
		}
		
		
		return forward;
	}

}
