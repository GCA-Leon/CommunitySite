<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
��й�ȣ ������ �Ϸ��߽��ϴ�.
<input type=button value="��������" id="goMain">
</body>
<script type="text/javascript">
	$(document).ready(function(){
		$("#goMain").click(function(){
			location.href="Main.do";
		});
	});
</script>
</html>