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
		System.out.println("���°�ΰ�:"+n);
		switch(n){
			//���̵� �ߺ�
			case 1 : String id = request.getParameter("id");
					 result = dao.getConfire(id);					 
					 if(result>0){
						 request.setAttribute("isIdCon", true);
						 System.out.println("id�ߺ���");
					 }else{
						 request.setAttribute("isIdCon", false);
						 request.setAttribute("userId", id);
						 System.out.println("id�ߺ��ƴ�");
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
							 System.out.println("���� ��й�ȣ�� �ٸ�");
						 }
					 }else{
						 request.setAttribute("isPw1", false);						 
					 } 
					 break;
			//�г��� �ߺ�
			case 2 : 
					String nick = request.getParameter("nick");
					result = dao.getNickConfire(nick);
					 if(result>0){
						 request.setAttribute("isNickCon", true);
						 System.out.println("nick�ߺ���");
					 }else{						 
						 request.setAttribute("isNickCon", false);
						 request.setAttribute("userNick", nick);
						 System.out.println("nick�ߺ��ƴ�");
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
							 System.out.println("���� ��й�ȣ�� �ٸ�");
						 }
					 }else{
						 request.setAttribute("isPw1", false);						 
					 } 
					 break;
			//�̸��� �ߺ�
			case 3 : String email = request.getParameter("email");
					 boolean ck = dao.emailcheck(email);			
					 if(ck==true){
						 request.setAttribute("isEmailCon", true);						 
						 System.out.println("email�ߺ���");
					 }else{
						 Mail mail =new Mail();
						String title ="leon�Դϴ�. ȸ�������� �ʿ��� ������ȣ �Դϴ�."; 
						ConfireNum cn = new ConfireNum();
						String AuthenticationKey = cn.getConfireNum();
						String contents = "�ȳ��ϼ��� leon�Դϴ�. ȸ�������� ���� �̸��� ���� ��ȣ�Դϴ�.\n"+"������ȣ:"+AuthenticationKey;
						mail.sendMail(email, title, contents);
						request.setAttribute("attk", AuthenticationKey);//������ȣ
						request.setAttribute("userEmail", email);
						request.setAttribute("isEmailCon", false);
						System.out.println("email�ߺ��ƴ�");
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
							 System.out.println("���� ��й�ȣ�� �ٸ�");
						 }
					 }else{
						 request.setAttribute("isPw1", false);						 
					 } 
					 break;
			//�̸��� ��ȣ����
			case 4 : String code = request.getParameter("code");
					 String orgCode = request.getParameter("orgCode");
					 System.out.println("�Է� ���� �ڵ� : "+code);
					 System.out.println("�̸��Ϸ� ���� �ڵ� : "+orgCode);
					 if(code.equals(orgCode)){
						 request.setAttribute("isCodeCon", false);
						 request.setAttribute("userCode", code);
						 request.setAttribute("orgcode1", orgCode);
						 System.out.println("code������");
					 }else{
						 request.setAttribute("isCodeCon", true);
						 System.out.println("code��������");
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
							 System.out.println("���� ��й�ȣ�� �ٸ�");
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
