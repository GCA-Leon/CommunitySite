<%@page import="java.io.*,java.text.*,java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="org.json.simple.JSONObject" %>
<%
			
			int idx = Integer.parseInt(request.getParameter("idx"));
			String path = request.getParameter("path");
			String nick = request.getParameter("nick");
			String command = request.getParameter("command");
			JSONObject json = new JSONObject();
			
			
			File CommentFile = new File(path);
			FileReader fr = null;
			FileWriter fw = null;
			String outstr = "";
			int res = 0;
			
			try{
				fr = new FileReader(CommentFile);
				BufferedReader br = new BufferedReader(fr); 
				outstr = br.readLine();    

				
			String[] comments = outstr.split("\\|");

			if(comments[idx].indexOf(nick) < 1){

				
				if(command.equals("down")){
					fw = new FileWriter(CommentFile);
					
					System.out.println("오는가1");
	
					String[] comel = comments[idx].split("\\$");
					String nickname = comel[1];
		           	String con = comel[2];
		           	String comup = comel[3];
		           	int comdown = Integer.parseInt(comel[4])+1;
		           	String comtime = comel[5];
		           	String cnick = comel[6]+"&"+nick;
		           	res = comdown;
		           	
					
					comments[idx] = "$"+nickname+"$"+con+"$"+comup+"$"+comdown+"$"+comtime+"$"+cnick;
					String afterd = "";
					int i = 0;
					
					while(true){
						afterd = afterd + comments[i]+"|";
						i++;
		                if(i==comments.length){
		                	break;
		                }
					}
					fw.write(afterd);

					fw.close();
				}
				else if(command.equals("up")){
					
					fw = new FileWriter(CommentFile);
					
					System.out.println("오는가2");
					String[] comel = comments[idx].split("\\$");
					String nickname = comel[1];
		           	String con = comel[2];
		           	int comup = Integer.parseInt(comel[3])+1;
		           	String comdown = comel[4];
		           	String comtime = comel[5];
		           	String cnick = comel[6]+"&"+nick;
		           	res = comup;
		           	
					
					comments[idx] = "$"+nickname+"$"+con+"$"+comup+"$"+comdown+"$"+comtime+"$"+cnick;
					String afterd = "";
					int i = 0;
					
					while(true){
						afterd = afterd + comments[i]+"|";
						
						i++;
		                if(i==comments.length){
		                	break;
		                }
					}
					fw.write(afterd);

					fw.close();
				}

			}else{

				res = 0;
			}
			
			
			}catch(Exception e){
				e.printStackTrace();
			}finally{
				fr.close();
			} 
			
			json.put("result",res);
			out.println(json);
%>