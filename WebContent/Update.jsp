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
	//마이페이지 닉네임 업데이트
	if(action.equals("Mypage_NicknameUpdate")){
		id= (String)request.getParameter("id");
		nick = (String)request.getParameter("nick");
		//System.out.println(id);
		int isNick = dao.getNickConfire(nick);
		if(isNick==0 && !nick.equals("중복된 닉네임입니다.")){
			int canNickChange  = dao.updateNick(id, nick);
			if(canNickChange>0){
				System.out.println("성공");
				session.setAttribute("loginUserNickname", nick);
				json.put("result", true);
			}else{
				System.out.println("데이터 베이스 처리간 실패");
				
			}	
		}else{
			System.out.println("닉네임 중복");
			json.put("result", false);
		}
	}else if(action.equals("MyPage_PasswordUpdate")){//마이 페이지 비밀 번호 업데이트
		id = (String)request.getParameter("id");
		pw = (String)request.getParameter("pw");
		int r = dao.updatePw(id, pw);
		if(r>0){
			json.put("result", true);
		}else{
			json.put("result", false);
		}
	}else if(action.equals("SignUp_Confire_Id")){//회원가입 아이디 중복검사
		
		id = request.getParameter("id");
		int r = dao.getConfire(id);
		if(r<1){//r이 0이면 중복되지 않음 1이면 중복됨 
			json.put("result", true); 
		}else{
			json.put("result", false);
		}
		//System.out.println("id : "+id);
	}else if(action.equals("SignUp_Confire_Nick")){// 회원가입 닉네임 중복검사
		nick = request.getParameter("nick");
		//System.out.println("nick : "+nick);
		boolean r = dao.nickcheck(nick);
		//System.out.println("r : "+r);
		if(r==false){//r이 false면 중복되지 않음 true이면 중복됨 
			json.put("result", true); 
		}else{
			json.put("result", false);
		}
	}else if(action.equals("SignUp_Confire_Email")){// 회원가입 이메일 중복검사
		email = request.getParameter("email");
		boolean r = dao.emailcheck(email);
		if(r==false){//r이 false면 중복되지 않음 true이면 중복됨
			Mail mail = new Mail();
			String title="Leon입니다. 회원가입 이메일 인증 번호 요청입니다.";
			ConfireNum cn = new ConfireNum();
			code = cn.getConfireNum();
			String contents = "인증 번호는 : "+ code+" 입니다.";			
			mail.sendMail(email, title, contents);
			json.put("result", true);
			json.put("code", code);
		}else{
			json.put("result", false);
		}
	}else if(action.equals("SignUp_Confire_Code")){// 회원가입 인증번호 중복검사
		code = request.getParameter("code");
		orgcode = request.getParameter("orgcode");		
		if(code.equals(orgcode)){//r이 false면 중복되지 않음 true이면 중복됨			
			json.put("result", true);			
		}else{
			json.put("result", false);
		}
	}else if(action.equals("SignUp_Join")){// 회원가입 Join
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
	System.out.println("Action을 입력해 주세요.");
}


out.println(json);
%>