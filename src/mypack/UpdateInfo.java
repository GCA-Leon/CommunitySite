package mypack;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UpdateInfo implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		ActionForward forward = new ActionForward();
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		DAO dao = new DAO();
		
		int result = dao.updatePw(id,pw);
		if(result>0){
			System.out.println("¾÷µ«¿Ï·á");
		}else{
			System.out.println("¤¤¤¤");
		}
		forward.setNextPage("SucessUpdate.jsp");	
		forward.setRedirect(true);
				
		return forward;	
	}
	
}
