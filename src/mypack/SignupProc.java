package mypack;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SignupProc implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		ActionForward forward = new ActionForward();
		DAO dao = new DAO();
		int n = Integer.parseInt((String)request.getParameter("num"));
		int result=0;
		String pw1;
		String pw2;
		System.out.println("몇번째인가:"+n);
		switch(n){
			//아이디 중복
			case 1 : String id = request.getParameter("id");
					 result = dao.getConfire(id);					 
					 if(result>0){
						 request.setAttribute("isIdCon", true);
						 System.out.println("id중복됨");
					 }else{
						 request.setAttribute("isIdCon", false);
						 request.setAttribute("userId", id);
						 System.out.println("id중복아님");
					 }
					 pw1 = request.getParameter("pw1");
					 pw2 = request.getParameter("pw2");
					 if(pw1!="null" && pw2!="null" && pw1!="" && pw2!=""){						 
						 if(pw1.equals(pw2)){
							 request.setAttribute("isPw1", true);
							 request.setAttribute("pw1", pw1);
							 request.setAttribute("pw2", pw2);
						 }else{
							 request.setAttribute("isPw1", false);
							 System.out.println("서로 비밀번호가 다름");
						 }
					 }else{
						 request.setAttribute("isPw1", false);						 
					 } 
					 break;
			//닉네임 중복
			case 2 : 
					String nick = request.getParameter("nick");
					result = dao.getNickConfire(nick);
					 if(result>0){
						 request.setAttribute("isNickCon", true);
						 System.out.println("nick중복됨");
					 }else{						 
						 request.setAttribute("isNickCon", false);
						 request.setAttribute("userNick", nick);
						 System.out.println("nick중복아님");
					 }
					 pw1 = request.getParameter("pw1");
					 pw2 = request.getParameter("pw2");
					 if(pw1!="null" && pw2!="null" && pw1!="" && pw2!=""){						 
						 if(pw1.equals(pw2)){
							 request.setAttribute("isPw1", true);
							 request.setAttribute("pw1", pw1);
							 request.setAttribute("pw2", pw2);
						 }else{
							 request.setAttribute("isPw1", false);
							 System.out.println("서로 비밀번호가 다름");
						 }
					 }else{
						 request.setAttribute("isPw1", false);						 
					 } 
					 break;
			//이메일 중복
			case 3 : String email = request.getParameter("email");
					 boolean ck = dao.emailcheck(email);			
					 if(ck==true){
						 request.setAttribute("isEmailCon", true);						 
						 System.out.println("email중복됨");
					 }else{
						 Mail mail =new Mail();
						String title ="leon입니다. 회원가입의 필요한 인증번호 입니다."; 
						ConfireNum cn = new ConfireNum();
						String AuthenticationKey = cn.getConfireNum();
						String contents = "안녕하세요 leon입니다. 회원가입을 위한 이메일 인증 번호입니다.\n"+"인증번호:"+AuthenticationKey;
						mail.sendMail(email, title, contents);
						request.setAttribute("attk", AuthenticationKey);//인증번호
						request.setAttribute("userEmail", email);
						request.setAttribute("isEmailCon", false);
						System.out.println("email중복아님");
					 }
					 pw1 = request.getParameter("pw1");
					 pw2 = request.getParameter("pw2");
					 if(pw1!="null" && pw2!="null" && pw1!="" && pw2!=""){						 
						 if(pw1.equals(pw2)){
							 request.setAttribute("isPw1", true);
							 request.setAttribute("pw1", pw1);
							 request.setAttribute("pw2", pw2);
						 }else{
							 request.setAttribute("isPw1", false);
							 System.out.println("서로 비밀번호가 다름");
						 }
					 }else{
						 request.setAttribute("isPw1", false);						 
					 } 
					 break;
			//이메일 번호인증
			case 4 : String code = request.getParameter("code");
					 String orgCode = request.getParameter("orgCode");
					 System.out.println("입력 받은 코드 : "+code);
					 System.out.println("이메일로 받은 코드 : "+orgCode);
					 if(code.equals(orgCode)){
						 request.setAttribute("isCodeCon", false);
						 request.setAttribute("userCode", code);
						 request.setAttribute("orgcode1", orgCode);
						 System.out.println("code인증됨");
					 }else{
						 request.setAttribute("isCodeCon", true);
						 System.out.println("code인증실패");
					 }
					 pw1 = request.getParameter("pw1");
					 pw2 = request.getParameter("pw2");
					 if(pw1!="null" && pw2!="null" && pw1!="" && pw2!=""){						 
						 if(pw1.equals(pw2)){
							 request.setAttribute("isPw1", true);
							 request.setAttribute("pw1", pw1);
							 request.setAttribute("pw2", pw2);
						 }else{
							 request.setAttribute("isPw1", false);
							 System.out.println("서로 비밀번호가 다름");
						 }
					 }else{
						 request.setAttribute("isPw1", false);						 
					 } 
					 break;
		}
		forward.setRedirect(false);
		forward.setNextPage("SignUp2.jsp");
		return forward;
		
	}
	
}
