package mypack;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class FindIdEmail implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		ActionForward forward = new ActionForward();
		String email = request.getParameter("email");
		System.out.println("email : "+email);
		
		DAO dao = new DAO();
		boolean ck = dao.emailcheck(email);
		if(ck == true){
			System.out.println("�����ϴ� �����Դϴ�.");
			Mail mail =new Mail();
			String title ="leon����Ʈ�Դϴ�. �̸��� �ּҷ� ����ã��";
			String id = dao.emailToID(email);
			String contents = "�ȳ��ϼ��� leon�Դϴ�. �̸��Ϸ� ���� ã���Դϴ�.\nȸ������ ���̵�� "+id+"�Դϴ�.";
			mail.sendMail(email, title, contents);
		}
		request.setAttribute("ck", ck);
		request.setAttribute("userEmail", email);
		
		forward.setRedirect(false);
		forward.setNextPage("FindId.jsp");		
		return forward;	
	}

}
