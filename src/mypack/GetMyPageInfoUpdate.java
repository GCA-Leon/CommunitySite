package mypack;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class GetMyPageInfoUpdate implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		ActionForward forward = new ActionForward();
		DAO dao = new DAO();
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String nickName = request.getParameter("nickName");
		String email = request.getParameter("email");
		
		DTO dto = new DTO();
		dto.setId(id);
		dto.setPw(pw);
		dto.setNickName(nickName);
		dto.setEmail(email);
		
		dao.update(dto);
		
		//System.out.println("id = "+id +"MPU pw="+pw+"nn= "+nickName +"email"+email);
		forward.setRedirect(false);
		forward.setNextPage("Main.do");
		return forward;
	}

}
