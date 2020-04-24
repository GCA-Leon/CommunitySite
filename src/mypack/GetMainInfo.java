package mypack;

import java.util.Vector;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mypack.ActionForward;
import mypack.DAO;
import mypack.DTO;

public class GetMainInfo implements Action{
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		ActionForward forward = new ActionForward();
		//String id = request.getParameter("id");
		
		DAO dao = new DAO();
		Vector<DTO> uv = dao.selectAll("usertb");		
		request.setAttribute("users", uv);
		
		/*자꾸 메시지 떠서*/
		
		forward.setRedirect(false);
		forward.setNextPage("Main.jsp");
		
		return forward;
	}
}
