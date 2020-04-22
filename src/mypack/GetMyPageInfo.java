package mypack;

import java.util.Vector;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class GetMyPageInfo implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		ActionForward forward = new ActionForward();
		DAO dao = new DAO();
		DTO dto = dao.getUserInfo("usertb","bbb");
		String id = dto.getId();
		String pw = dto.getPw();
		String nickName = dto.getNickName();
		String email = dto.getEmail();
		
		
		request.setAttribute("uId", id);
		request.setAttribute("uPw", pw);
		request.setAttribute("uNickName", nickName);
		request.setAttribute("uEmail", email);
		
		forward.setRedirect(false);
		forward.setNextPage("MyPage.jsp");
		return forward;
	}

}
