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
	}else if(action.equals("MyPage_PasswordUpdate")){
		id = (String)request.getParameter("id");
		pw = (String)request.getParameter("pw");
		int r = dao.updatePw(id, pw);
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