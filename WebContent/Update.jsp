<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="org.json.simple.JSONObject"%>
<%@ page import="mypack.*"%>
<%
JSONObject json = new JSONObject();		
DAO dao = new DAO();
String id="";
String nick="";
String pw="";
String email="";
String code="";
String orgcode="";
String action="";

action = (String)request.getParameter("action");
if(action !=null){
	//���������� �г��� ������Ʈ
	if(action.equals("Mypage_NicknameUpdate")){
		id= (String)request.getParameter("id");
		nick = (String)request.getParameter("nick");
		//System.out.println(id);
		int isNick = dao.getNickConfire(nick);
		if(isNick==0 && !nick.equals("�ߺ��� �г����Դϴ�.")){
			int canNickChange  = dao.updateNick(id, nick);
			if(canNickChange>0){
				System.out.println("����");
				session.setAttribute("loginUserNickname", nick);
				json.put("result", true);
			}else{
				System.out.println("������ ���̽� ó���� ����");
				
			}	
		}else{
			System.out.println("�г��� �ߺ�");
			json.put("result", false);
		}
	}else if(action.equals("MyPage_PasswordUpdate")){//���� ������ ��� ��ȣ ������Ʈ
		id = (String)request.getParameter("id");
		pw = (String)request.getParameter("pw");
		int r = dao.updatePw(id, pw);
		if(r>0){
			json.put("result", true);
		}else{
			json.put("result", false);
		}
	}else if(action.equals("SignUp_Confire_Id")){//ȸ������ ���̵� �ߺ��˻�
		
		id = request.getParameter("id");
		int r = dao.getConfire(id);
		if(r<1){//r�� 0�̸� �ߺ����� ���� 1�̸� �ߺ��� 
			json.put("result", true); 
		}else{
			json.put("result", false);
		}
		//System.out.println("id : "+id);
	}else if(action.equals("SignUp_Confire_Nick")){// ȸ������ �г��� �ߺ��˻�
		nick = request.getParameter("nick");
		//System.out.println("nick : "+nick);
		boolean r = dao.nickcheck(nick);
		//System.out.println("r : "+r);
		if(r==false){//r�� false�� �ߺ����� ���� true�̸� �ߺ��� 
			json.put("result", true); 
		}else{
			json.put("result", false);
		}
	}else if(action.equals("SignUp_Confire_Email")){// ȸ������ �̸��� �ߺ��˻�
		email = request.getParameter("email");
		boolean r = dao.emailcheck(email);
		if(r==false){//r�� false�� �ߺ����� ���� true�̸� �ߺ���
			Mail mail = new Mail();
			String title="Leon�Դϴ�. ȸ������ �̸��� ���� ��ȣ ��û�Դϴ�.";
			ConfireNum cn = new ConfireNum();
			code = cn.getConfireNum();
			String contents = "���� ��ȣ�� : "+ code+" �Դϴ�.";			
			mail.sendMail(email, title, contents);
			json.put("result", true);
			json.put("code", code);
		}else{
			json.put("result", false);
		}
	}else if(action.equals("SignUp_Confire_Code")){// ȸ������ ������ȣ �ߺ��˻�
		code = request.getParameter("code");
		orgcode = request.getParameter("orgcode");		
		if(code.equals(orgcode)){//r�� false�� �ߺ����� ���� true�̸� �ߺ���			
			json.put("result", true);			
		}else{
			json.put("result", false);
		}
	}else if(action.equals("SignUp_Join")){// ȸ������ Join
		id = request.getParameter("id");
		pw = request.getParameter("pw");
		nick = request.getParameter("nick");
		email = request.getParameter("email");
		int r = dao.insertMember(id, pw, nick, email);
		if(r>0){
			json.put("result", true);
		}else{
			json.put("result", false);
		}
	}
}else{
	System.out.println("Action�� �Է��� �ּ���.");
}


out.println(json);
%>