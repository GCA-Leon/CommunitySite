package mypack;

import javax.mail.Session;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class FindPw_ConfireNum implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		ActionForward forward = new ActionForward();
		String confireNum = (String)request.getParameter("confireNum");
		String attk = (String)request.getParameter("confireNum2");
		String email = (String)request.getParameter("email"); 
		 
		System.out.println("num1 = "+confireNum);
		System.out.println("num2 = "+attk);
		if(confireNum.equals(attk)){		
			
			request.setAttribute("confirePass", true);
			request.setAttribute("userAttk", attk);
			System.out.println("userAttk : "+attk);
			System.out.println("같음");			
		}else{
			request.setAttribute("confirePass", false);
			System.out.println("다름");			
		}
		forward.setRedirect(false);
		forward.setNextPage("FindPw.jsp");		
		return forward;	
	}

}
