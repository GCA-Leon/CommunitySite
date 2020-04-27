package mypack;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import yjpack.SearchDAO;

public class RandomAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = new ActionForward();
		System.out.println("ok");
		double dValue = Math.random();
		int board_num = (int)(dValue*5)+1;
		System.out.println("board_num : "+board_num);
		
		//int post_num =
		String board_name="";
		switch(board_num){
		case 1 : board_name = "board_best";break;
		case 2 : board_name = "board_game";break;
		case 3 : board_name = "board_normal";break;
		case 4 : board_name = "board_read";break;
		case 5 : board_name = "board_ride";break;
		}
		System.out.println("board_name : "+board_name);
		
		SearchDAO dao = new SearchDAO();
		int idx_amount = dao.listcall(board_name);
		System.out.println("idx_amount : "+idx_amount);
		double dValue2 = Math.random();
		String idx =""+ ((int)(dValue2*idx_amount)+1);
		System.out.println("idx : "+idx);
		
		//request.setAttribute("boardname", board_name);
		//request.setAttribute("idx", idx);
		forward.setRedirect(false);
		forward.setNextPage("Post.do?boardname="+board_name+"&idx="+idx);
		
		return forward;
	}
}