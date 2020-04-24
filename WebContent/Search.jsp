<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
    <%@ page import="java.util.*,mypack.*, yjpack.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
*,html,body{
	margin: 0;
	padding:0;
	box-sizing: border-box;
}
	#wrap{
	width:800px;
	border: 1px solid;
	margin : 0 auto;
	}
	#search{
	padding:10px;
	border:1px solid;
	width:700px;
	margin: 50px;
	height: 40px;
	}
	select{
	height: 23px;
	
	}
	#insertkeyword{
	
	}
	#result{
	border-top:1px solid;
	width: 700px;
	margin:50px;
	}
	table{
	text-align: center;
	border-collapse: collapse;
	}
	td{
	border-bottom: 1px solid;
	}
	tr:nth-child(1) td{
	font-weight: bold;
	}
	td:nth-child(1){
	width:50px;
	}
	td:nth-child(2) {
	width:550px;
	}
	td:nth-child(3) {
	width:100px;
	}
	td:nth-child(4) {
	width:60px;
	}
	td:nth-child(5) {
	width:50px;
	}

</style>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	SearchDAO dao = new SearchDAO();
	String boardname = (String)request.getAttribute("baordname");
	int count = dao.listcall(boardname);
	String pages = request.getParameter("page");
	int start = 0;
	count = (int)Math.ceil((double)count/20);
		Vector<SearchDTO> dto = (Vector<SearchDTO>)request.getAttribute("list");
	if(pages != null){
		start = Integer.parseInt(pages);
		start = (start-1)*20;
		
	}
	%>
 <div id="wrap">
 <div id="search">
<form action="SearchAction.do" >
    <select name="sc">
        <option value="title">제목</option>
        <option value="contents">내용</option>
        <option value="writer">글쓴이</option>
    </select> <input type="text" name="keyword" id="insertkeyword" size="60" ><input type="submit" value="search" style="margin: 5px;">
   <input type="hidden" name="pages" value="<%=start %>">
    </form>
    </div>
    <div id="result">
    	<table>
    		<tr>
    			<td>번호</td>
    			<td>제목</td>
    			<td>글쓴이</td>
    			<td>조회수</td>
    			<td>날짜</td>
    		</tr>
    		
    		<%
    			
    		if(dto != null ){
    			for(int i=0;i<dto.size();i++){ 
    			%>
    			
    		<tr>	
    		
    			<td><%=dto.get(i).getIdx() %></td>
    			<td><%=dto.get(i).getTitle() %></td>
    			<td><%=dto.get(i).getWriter() %></td>
    			<td><%=dto.get(i).getView() %></td>
    			<td><%=dto.get(i).getWdate() %></td>
			</tr>
			<%
			} 
    		}
			%>
    	 <tr>
               <td>
               <div id="pagehrefs">
                <%
    	for(int i=1;i<=count;i++){   //?sc=title&keyword=&pages=0
   			 %>
    	<a href="SearchAction.do?sc=<%=request.getParameter("sc") %>&keyword=<%=request.getParameter("keyword") %>&pages=<%=i %>">
    		[<%=i %>]
    	</a> 
    <%} %>
    </div>
               </td>
               </tr>
    	</table>
    
    </div>
    	
    
</div>
    
</body>
</html>