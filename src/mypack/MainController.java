package mypack;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import yjpack.*;
import sun.rmi.server.Dispatcher;

@WebServlet("/MainController")
public class MainController extends HttpServlet {
	//private static final long serialVersionUID = 1L;
	
    public MainController() {
        super();
        // TODO Auto-generated constructor stub
       
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doProcess(request, response);	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doProcess(request, response);
	}
	
	public void doProcess(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{

		String requestURI = request.getRequestURI(); // ��ü �ּ�
		System.out.println("requestURI="+requestURI);
		int cmdIdx = requestURI.lastIndexOf("/")+1; // loc~~/xxx.do
		System.out.println("cndidx="+cmdIdx);
		String command = requestURI.substring(cmdIdx);// xxx.do
		String viewPage = null;		
		Action action = null;
		ActionForward forward = null;
		System.out.println(command);//*.do
		try{
			if(command.equals("Main.do")){
				action = new GetMainInfo();
				forward = action.execute(request, response);				
			}else if(command.equals("MyPage.do")){//����������
				action = new GetMyPageInfo();
				forward = action.execute(request, response);
			}else if(command.equals("MyPage_update.do")){//���������� ��������
				action = new GetMyPageInfoUpdate();
				forward = action.execute(request, response);
			}else if(command.equals("SignUp.do")){//ȸ������ ������
				action = new SignUp();
				forward = action.execute(request, response);
			}else if(command.equals("FindId.do")){//���̵�ã��
				action = new GOFindId();
				forward = action.execute(request, response);
			}else if(command.equals("FindPw.do")){//��й�ȣã��
				action = new GoFindPw();
				forward = action.execute(request, response);
			}else if(command.equals("FindIdEmail.do")){//�̸��Ϸ� ���̵�ã��
				action = new FindIdEmail();
				forward = action.execute(request, response);
			}else if(command.equals("EmailConfire.do")){//�̸��Ϸ� ������ȣ
				action = new EmailConfire();
				forward = action.execute(request, response);				
			}else if(command.equals("FindPw_ConfireNum.do")){//	��й�ȣ ã���� ������ȣ ����		
				action = new FindPw_ConfireNum();
				forward = action.execute(request, response);				
			}else if(command.equals("UpdateInfo.do")){//��й�ȣã���� ��й�ȣ ����				
				action = new UpdateInfo();
				forward = action.execute(request, response);				
			}else if(command.equals("loginpage.do")){//�α���������
				action = new LoginPage();
				forward = action.execute(request, response);
			}else if(command.equals("goLogout.do")){//�α���������
				action = new Logout();
				forward = action.execute(request, response);
			}else if(command.equals("join.do")){//ȸ�������ϱ�
				action = new JoinProc();
				forward = action.execute(request, response);
			}else if(command.equals("Search.do")){
				action = new Search();
				forward = action.execute(request, response);
			}
			else if(command.equals("SearchAction.do")){
				action = new SearchAction();
				forward = action.execute(request, response);
				
			}else if(command.equals("BoardSearchAction.do")){ 
				action = new BoardSearchAction();
				forward = action.execute(request, response);
			}
			else if(command.equals("Write.do")){
				action = new WriteAction();
				forward = action.execute(request, response);
				
			}
			else if(command.equals("Post.do")){
				action = new PostAction();
				forward = action.execute(request, response);
			}
			else if(command.equals("Press.do")){//�Խ��� �� �߿� �� �ٿ� ��ư
				action = new Press();
				forward = action.execute(request, response);
			}else if(command.equals("WriteCommentAction.do")){
				action = new WriteCommentAction();
				forward = action.execute(request, response);
			}
			else if(command.equals("UpdateCommentAction.do")){
				action = new UpdateCommentAction();
				forward = action.execute(request, response);
			}else{				
				System.out.println("��ɾ� ����");
				response.sendRedirect("Main.do");
			}
			if(forward != null){
				if(forward.isRedirect()){// = true; ���ȳѱ�� �������� �ѱ涧
					response.sendRedirect(forward.getNextPage());
				}else{    //default = false ������ �ѱ涧 ���� �ѱ�� 
					RequestDispatcher dispatcher = request.getRequestDispatcher(forward.getNextPage());
					dispatcher.forward(request, response);
				}
			}
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	

}
