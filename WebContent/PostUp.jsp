<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="org.json.simple.JSONObject"%>
<%@ page import="yjpack.*"%>

<%
		//System.out.println("여기오나?");
		int result = 0;
		String value = "";
		String already ="";
		SearchDAO dao = new SearchDAO();
		//System.out.println("getUpNum: "+request.getParameter("upNum"));
		//System.out.println("getDownNum: "+request.getParameter("downNum"));
		
		if(request.getParameter("upNum") != null){		//다운버튼	
			System.out.println(request.getParameter("upNum"));
			String str = request.getParameter("upNum");
			String[] strUpNum = str.split(" ");
			//System.out.println(strUpNum[1]);
			int upNum = Integer.parseInt(strUpNum[1]);			
		System.out.println("upNum : "+upNum);
			String boardname = request.getParameter("boardname");
		System.out.println(boardname);
			String press = request.getParameter("press");
		System.out.println("pressState : "+press);
			String sidx = request.getParameter("idx");
			int idx = Integer.parseInt(sidx);
		System.out.println("idx : "+idx);
			String nickName = request.getParameter("nickname");
		System.out.println("postUp nickname : "+nickName);
			int isList = dao.isUpList(boardname, nickName, idx);
			System.out.println("isList: "+isList);
			if(isList==0){
				System.out.println("추천안눌럿음");
				dao.upList(boardname,nickName,idx);
				int r = dao.favorite(boardname, press, idx);
				if(r>0){
					System.out.println("성공ㅎ");
					upNum = upNum+1;
					value = "추천 "+(upNum);
					System.out.println("value : "+value);
				}
			}else{
				System.out.println("이미 추천 누름");				
				value = "추천 "+(upNum);
				System.out.println("value : "+value);
				already = "already";
			}
			
			
		}
		if(request.getParameter("downNum") != null){	//다운버튼
			/* System.out.println(request.getParameter("downNum"));
			String str = request.getParameter("downNum");
			String[] strDownNum = str.split(" ");
			//System.out.println(strDownNum[1]);
			int downNum = Integer.parseInt(strDownNum[1]);
			downNum = downNum+1;			
			System.out.println("downNum : "+downNum);
			value = "반대 "+(downNum);
			System.out.println("value : "+value); */
			
			System.out.println(request.getParameter("downNum"));
			String str = request.getParameter("downNum");
			String[] strUpNum = str.split(" ");
			//System.out.println(strUpNum[1]);
			int downNum = Integer.parseInt(strUpNum[1]);			
		System.out.println("downNum : "+downNum);
			String boardname = request.getParameter("boardname");
		System.out.println(boardname);
			String press = request.getParameter("press");
		System.out.println("pressState : "+press);
			String sidx = request.getParameter("idx");
			int idx = Integer.parseInt(sidx);
		System.out.println("idx : "+idx);
			String nickName = request.getParameter("nickname");
		System.out.println("postUp nickname : "+nickName);
			int isList = dao.isUpList(boardname, nickName, idx);
			System.out.println("isList: "+isList);
			if(isList==0){
				System.out.println("추천안눌럿음");
				dao.upList(boardname,nickName,idx);
				int r = dao.favorite(boardname, press, idx);
				if(r>0){
					System.out.println("성공ㅎ");
					downNum = downNum+1;
					value = "반대 "+(downNum);
					System.out.println("value : "+value);
				}
			}else{
				System.out.println("이미 추천 누름");				
				value = "반대 "+(downNum);
				System.out.println("value : "+value);
				already = "already";
			}
			
		}
		/* if(request.getParameter("upNum") != null){
			JSONObject json = new JSONObject();
			
			SearchDAO dao = new SearchDAO();
			String upNum = request.getParameter("upNum");
			System.out.println("upNum: "+ upNum);
			 */
			/* result = dao.
			System.out.println("result = "+result); */
			
			
			/* if(result ==0){
				value = "사용가능한 아이디 입니다.";
			}else if(result == 1){
				value = "이미 존재하는 아이디 입니다.";
			} */
			/* int num = Integer.parseInt(upNum);
			value = ""+(num++);
			json.put("result", value);
			out.println(json);
		} */
			JSONObject json = new JSONObject();			
			json.put("result", value);
			json.put("already", already);
			out.println(json);
		
	%>