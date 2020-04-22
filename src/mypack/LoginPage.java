package mypack;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginPage implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = new ActionForward();
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		System.out.println("id="+id+","+"pw="+pw);
		
			
	
		
		String boardname = request.getParameter("boardName");		
		String idx = (String)request.getParameter("postIdx");
		DAO dao = new DAO();
		boolean login = dao.login(id, pw);
		if(login){
			System.out.println("로그인 성공");
			request.setAttribute("loginck", true);
			String nickname = dao.getNickName(id);
			String email = dao.idToEmail(id);
			// 2020.04.21 지원홍
			HttpSession session = request.getSession(true);
			session.setAttribute("loginUserId", id);
			session.setAttribute("loginUesrPw", pw);
			session.setAttribute("loginUserNickname", nickname);
			session.setAttribute("loginUserEmail", email);
			System.out.println("-----세션에 저장된 값들------");
			System.out.println("loginUserId : " + id);
			System.out.println("loginUesrPw : "+ pw);
			System.out.println("loginUserNickname : " + nickname);
			System.out.println("loginUserEmail : " + email);
			System.out.println("-----------------------");
			// 2020.04.21 지원홍	
			System.out.println("loginPage_Nickname: "+nickname);
			//request.setAttribute("loginUserNickname", nickname);
			//request.setAttribute("loginUserId", id);
			if(boardname != null){
				System.out.println("boardname: "+boardname);
				System.out.println("idx: "+idx);				
				forward.setRedirect(false);
				forward.setNextPage("Post.do?boardname="+boardname+"&idx="+idx+"&nickname="+nickname);
			}else{
				forward.setRedirect(false);
				forward.setNextPage("Main.jsp");
			}
		}else{
			System.out.println("로그인 실패");
			forward.setRedirect(true);
			forward.setNextPage("Main.jsp");
		}

		
		return forward;
	}
}
