<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="EUC-KR"%>
<%@ page import="mypack.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		DTO dto = new DTO();
		String id = (String)request.getAttribute("uId"); 
		String pw = (String)request.getAttribute("uPw");
		String nickName = (String)request.getAttribute("uNickName");
		String email = (String)request.getAttribute("uEmail");
		
		
	%>
		<form action = "MyPage_update.do">	
			id : <input type="text" name="id" value=<%=id %> readonly><br>
			pw : <input type="text" name="pw"><br>
			nickName : <input type="text" name="nickName"><br>
			email : <input type="text" name="email" value=<%=email %> readonly><br>
			<input type="submit" value="변경 완료">
		</form>
	
</body>
</html>