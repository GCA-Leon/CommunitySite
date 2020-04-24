package yjpack;

import java.io.*;
import java.text.*;
import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mypack.*;
public class WriteCommentAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		ActionForward forward = new ActionForward();
		
		request.setCharacterEncoding("UTF-8");
		System.out.println("¤»¤»¤»");
		String boardname = request.getParameter("boardname");
		String nickname = request.getParameter("nickname");
		String Content = request.getParameter("commentContent");
		int idx = Integer.parseInt(request.getParameter("idx"));
		
		SimpleDateFormat format = new SimpleDateFormat ( "yyyy.MM.dd~HH:mm:ss");
		Date now = new Date();
		String time = format.format(now);
		
		String instr="$"+nickname+"$"+Content+"$"+0+"$"+0+"$"+time+"$null"+"|";
		
		File CommentFile = new File("C:/Users/user/Desktop/CommentList/"+boardname+"/"+idx+".txt");
		
		FileWriter fw = null;
		
		try{
			fw = new FileWriter(CommentFile,true);
			fw.write(instr);
			
		}catch(Exception e){
			e.printStackTrace();
		}finally {
			fw.close();
		}
		
		forward.setRedirect(true);
		forward.setNextPage("Post.do?boardname="+boardname+"&idx="+idx);
		
		return forward;
	}
}
