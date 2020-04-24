package yjpack;

import java.io.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mypack.Action;
import mypack.ActionForward;

public class UpdateCommentAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
						ActionForward forward = new ActionForward();

						request.setCharacterEncoding("UTF-8");
						
						String boardname = request.getParameter("boardname");
						String idx = request.getParameter("idx");
						String command = request.getParameter("command"); 
						String path = request.getParameter("path");
						int comidx = Integer.parseInt(request.getParameter("comidx"));
						String updatecomment = request.getParameter("updatecomment");
						File CommentFile = new File(path);
						FileReader fr = null;
						FileWriter fw = null;
						String outstr = "";
						System.out.println("Command:"+command);
						try{
							fr = new FileReader(CommentFile);
							BufferedReader br = new BufferedReader(fr);
							outstr = br.readLine();
							
							fw = new FileWriter(CommentFile);
							
						String[] comments = outstr.split("\\|");
						
						System.out.println(comments[comidx]);
						
						if(command.equals("삭제")){
							System.out.println("오는가1");
							
							comments[comidx] = "";
							String afterd = "";
							int i = 0;
							
							while(true){
								if(i==comidx){
									
								}
								else{
								afterd = afterd + comments[i]+"|";
								}
								
								i++;
				                if(i==comments.length){
				                	break;
				                }
							}

							fw.write(afterd);
						}
						else if(command.equals("수정")){
							
							System.out.println("오는가2");
							String[] comel = comments[comidx].split("\\$");
							String nick = comel[1];
				           	String con = comel[2];
				           	String comup = comel[3];
				           	String comdown = comel[4];
				           	String comtime = comel[5];
				           	String cnick = comel[6];
				           	
				           	System.out.println("$"+nick+"$"+updatecomment+"$"+comup+"$"+comdown+"$"+comtime+"$"+cnick);
							
							comments[comidx] = "$"+nick+"$"+updatecomment+"$"+comup+"$"+comdown+"$"+comtime+"$"+cnick;
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
							
						}

						}catch(Exception e){
							e.printStackTrace();
						}finally{
							fr.close();
							fw.close();
						}

						forward.setRedirect(true);
						forward.setNextPage("Post.do?boardname="+boardname+"&idx="+idx);
						
						return forward;
	}
}
