<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="org.json.simple.JSONObject"%>
<%@ page import="yjpack.*"%>

<%
		//System.out.println("�������?");
		int result = 0;
		String value = "";
		String already ="";
		SearchDAO dao = new SearchDAO();
		//System.out.println("getUpNum: "+request.getParameter("upNum"));
		//System.out.println("getDownNum: "+request.getParameter("downNum"));
		
		if(request.getParameter("upNum") != null){		//�ٿ��ư	
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
				System.out.println("��õ�ȴ�����");
				dao.upList(boardname,nickName,idx);
				int r = dao.favorite(boardname, press, idx);
				if(r>0){
					System.out.println("������");
					upNum = upNum+1;
					value = "��õ "+(upNum);
					System.out.println("value : "+value);
				}
			}else{
				System.out.println("�̹� ��õ ����");				
				value = "��õ "+(upNum);
				System.out.println("value : "+value);
				already = "already";
			}
			
			
		}
		if(request.getParameter("downNum") != null){	//�ٿ��ư
			/* System.out.println(request.getParameter("downNum"));
			String str = request.getParameter("downNum");
			String[] strDownNum = str.split(" ");
			//System.out.println(strDownNum[1]);
			int downNum = Integer.parseInt(strDownNum[1]);
			downNum = downNum+1;			
			System.out.println("downNum : "+downNum);
			value = "�ݴ� "+(downNum);
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
				System.out.println("��õ�ȴ�����");
				dao.upList(boardname,nickName,idx);
				int r = dao.favorite(boardname, press, idx);
				if(r>0){
					System.out.println("������");
					downNum = downNum+1;
					value = "�ݴ� "+(downNum);
					System.out.println("value : "+value);
				}
			}else{
				System.out.println("�̹� ��õ ����");				
				value = "�ݴ� "+(downNum);
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
				value = "��밡���� ���̵� �Դϴ�.";
			}else if(result == 1){
				value = "�̹� �����ϴ� ���̵� �Դϴ�.";
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