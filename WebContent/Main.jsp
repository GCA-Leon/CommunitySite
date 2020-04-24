<!-- �ֱ��� --> <!-- sddsd -->
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="EUC-KR"%>
<%@ page import="mypack.*, java.util.*, yjpack.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <link href="https://fonts.googleapis.com/css2?family=Bungee&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
     <script
  src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"
  integrity="sha256-T0Vest3yCU7pafRw9r+settMBX6JkKN06dqBnpQ8d30="
  crossorigin="anonymous"></script>
    <style>
        html,body,*{
            padding: 0px;
            margin: 0px;
            box-sizing: border-box;
        }
        #wrap{
            width: 100%;
            height: 1300px;
            background-color: gainsboro;
        }
        header{
            padding: 20px;                             
            background-color: steelblue;
            height: 65px;            
        }
        #headCon{
            width: 1200px;
            display: flex;
            margin: 0 auto;
            justify-content: space-between;
        }
        #headL{
            color: snow;
            display: flex;
        }
        #headL a{
        	color: snow;
        }        
        #headL a:VISITED{       
            color: snow;
        }
        
        #headC{
            display: flex;
            list-style: none;
            color: gainsboro;
        }
        #headC li{
            padding-top: 5px; 
            z-index: 10;
        }
        /* �޴����� */
        .menu a{
        	color:black;
            margin: 5px;   
            display:none;         
        }
        .menu a:link{
            color: black;
        } 
        .menu a:visited{
            color: black;
        }
        
        #headR{
            display: flex;
            color: snow;
            
            right: -20px;
            
        }
        #loginBtn, #logoutBtn{
            cursor: pointer;
            margin-top: -5px;
            margin-right: 20px;
            width: 80px;
            height: 40px;
            color: dodgerblue;
            background-color: snow;
            border-top-left-radius: 20px;
            border-top-right-radius: 20px;
            border-bottom-left-radius: 20px;
            border-bottom-right-radius: 20px;
            border: 0;
            outline: 0;
        }
        
        #logo{
            font-size: 40px;
            margin-top: -40px;
            font-family: 'Bungee', cursive;   
            cursor: pointer;
        }
        #menuIcon{
            margin-right: 20px;         
            margin-top: -5px;
            cursor: pointer;
        }
        #random{
            padding-top: 5px;
            margin-right: 20px;
            cursor: pointer;
        }
        
        main{
            width: 1080px;
            height: 1000px;
            background-color: snow;
            margin: 0 auto;   
            padding: 10px;
            padding-top: 80px;
        }
        
      
        .board{
            width: 530px;
            padding-left: 20px;
            margin-bottom: 30px;
        }
        .boardCols{
            display: flex;
            
        }
       td>a{
       color:black;
       }
       td>a:VISITED{
       color:gainsboro;
       }
       a>span{
           margin-left: 20px;
            color: deepskyblue;
        }
        td>span{
           margin-left: 20px;
            color: deepskyblue;
        }
        table{
             width: 500px;
        }
        th{
            text-align: left;
            font-size: 25px;
            font-weight: 100;
            color: deepskyblue;
            border-bottom: 2px solid lightgray;
            padding-bottom: 10px;
        }
        td{
            border-bottom: 1px solid lightgray;
            padding-top: 3px;
            padding-bottom: 3px;
        }
        .main_boardname a:VISITED{
        	color:deepskyblue;
        }
        .main_boardname a{
        	color:deepskyblue;
        }
        #headmenus{
            display: flex;
            width: 1048px;
            padding-left: 250px;
            position: inherit;
            top:60px;
            left: 10px;            
            margin:0 auto;
        }
        .menubo{
/*            margin-top: -15px;*/
            margin-top: 20px;
            width: 100px;
            margin-left: 0px;
        }
        #i2{
            margin-left: -10px;
        }
        #i3{
            margin-left: 30px;
        }
        #i4{
            margin-left: 30px;
        }
        #i7{
            margin-left: -10px;
        }
        .menu{
            display: flex;
            flex-flow: column; 
            background-color: white;
            width: 200px;
            padding: 15px;
            border-top-left-radius: 5px;
            border-top-right-radius: 5px;
            border-bottom-left-radius: 5px;
            border-bottom-right-radius: 5px;
            box-shadow: 0px 10px 10px 5px gainsboro;            
            opacity: 0%;
            
        }
        
        
         /* Ǫ�� �κ� */
        footer{
            font-size: 12px;
            color: gray;
            background-color: gainsboro;            
            margin: 0 auto;
            width: 1080px;
            padding-left: 20px;
        }
        #footme{margin-top: 30px;}
        #footme a{margin-right: 10px;font-size: 14px;}
        #footme a:visited{color:gray}
        #footetc a:visited{color:deepskyblue}
        a{text-decoration: none}
        
        /* ���̵�� */
        sidebar{
            display: none;
            position: fixed;
            background-color: rgba(1,1,1,0.1);
            width: 100%;
            height: 100vh;
            top: 0;
            left: 0;
            z-index: 20;
        }
        #side{
            width: 280px;
            height: 100vh;
            background-color: white;
            
            overflow: scroll;
        }
        #sideback{
            width: 100%;
            background-color: rgba(1,1,1,0.1);
        }
        #sideimg img{width: 100%}
        .sidemenus{
            width: 100%;
            font-size: 13px;
            font-weight: 600;
        }
        .sidemenut{
            padding: 15px;
            border-bottom: 1px solid #eee;
        }
        .sidemenuc{
            font-size: 14px;
            font-weight: 100;
            color: gray;
            margin : 10px;
            padding-left: 30px;
        }
        /* 2020.04.21 ����ȫ */
        #sidemypage {
            position: relative;
            height: 100px;
            background: #4682B4;
        }
        
        #sidemypage > i {
            position: absolute;
            top: 25px;
            left: 5px;
            color: white;
        }
        
        #sidemypage > div:nth-child(2) {
            position: absolute;
            top: 30px;
            left: 60px;
            font-size: 14px;
            color: white;
        }
        
        #sidemypage > div:nth-child(3) {
            position: absolute;
            top: 50px;
            left: 60px;
            font-size: 14px;
            color: #D5D5D5;
        }       
        
        #myPageBtn {
        	position: absolute;
        	width: 70px;
        	height: 25px;
            top: 50px;
            left: 60px;
            font-size: 14px;
            border-radius: 10px;
            background-color: white;
            color: #4682B4;
        }
        /* 2020.04.21 ����ȫ */
        
        /*�α���â*/
        #loginWrap{
            display: none;
            position: fixed;
            width: 100%;
            top: 0;
            left: 0;
            z-index: 11;
        }
        #loginBack{
            min-height: 100vh;
            
            /*background-image: linear-gradient(120deg,#3498db,#8e44ad);*/
            background-color: rgba(1,1,1,0.3);
        }
        #login-form{
            width:360px;
            background: snow;
            height: 450px;
            padding:  80px 40px;
            border-radius: 10px;
            position: absolute;        
            left: 50%;
            top: 50%;
            transform: translate(-50%,-50%);
        }
    
        #login-form h1{
            text-align: center;
            margin-bottom: 60px;
        }
        .txtb{
            border-bottom: 2px solid #adadad;
            position: relative;
            margin:30px 0;
        }
        .txtb input{
            font-size: 15px;
            color: #333;
            border:none;
            width: 100%;
            outline: none;
            background: none;
            padding: 0 5px;
            height: 40px;
        }

        .txtb span::before{        
            content: attr(data-placeholder);
            position: absolute;
            top: 50%;
            left: 5px;
            color: #adadad;
            transform: translateY(-50%);
            z-index: -1;
            transition: .5s;
        }
        .txtb span:after{

            content: '';
            position: absolute;
            width: 0%;
            height: 2px;
            background: linear-gradient(120deg,deepskyblue,darkblue);
            transition: .5s;
            top: 40px;
            left: 0px;
        }
        /*#8e44ad*/
        .focus + span::before{
            top: -5px;
        }
        .focus + span::after{
            width: 100%;
        }
        .logbtn{
            display: block;
            width: 100%;
            height: 50px;
            border: none;
            background:  linear-gradient(120deg,steelblue,dodgerblue);
            border-radius: 10px;
            background-size: 200%;
            color: #fff;
            outline: none;
            cursor: pointer;
            transition: .5s;

        }
        .logbtn:hover{
            background-position: right;        
        }
        .bottom-text {
            margin-top: 30px;
            text-align: center;
            font-size: 13px;            
        }
        /* a:visited{
            color: dodgerblue;
        } */
        a{
        	color:gainsboro;
        }
        a:VISITED{
        	color: gainsboro;
        }
        .bottom-text a{
        	color: black;
        }
        /*������*/
        @media(max-width:1500px){
            main{                
                margin-left: 200px;
            }
            footer{
                margin-left: 200px;
            }
            
        }
        @media(max-width:1280px){   
             main{
             	margin: 0 auto;
             }
            #headR{
                position: absolute;
                right: 10px;
            }
            #headCon{
                display: flex;
                justify-content: flex-start;
                
            }
            #headC{
                margin-left: 50px;
            }
            #menu1{
                margin-left: -40px;
            }
            #menu2{
                margin-left: -60px;
            }
            #menu3{
                margin-left: -50px;
            }
            #menu4{
                margin-left: -40px;
            }
            #menu5{
                margin-left: -40px;
            }
            #menu6{
                margin-left: -60px;
            }
            #menu7{
                margin-left: -90px;
            }
            #headmenus{
                margin-left:80px;
            }
            
        }
        @media(max-width:1100px){/*��Ÿ*/
            main{                
                width: 100%;
                margin-left: 0px; 
                height: 1000px;
                padding-left: 10%;
            }
            /*#headC{
                display: none;
            }*/
            footer{
                margin-left: 0px;
            }
            
            #b7{
                display: none;
            }
        }
        @media(max-width:1020px){/*������*/
            #b6{
                display: none;
            }
        }
        @media(max-width:930px){/*������*/
            #b5{
                display: none;
            }
            
        }
        @media(max-width:840px){/*Ŀ�´�Ƽ*/
            #b4{
                display: none;
            }
           
        }
        @media(max-width:740px){/*�����Ÿ���*/
            #headC{
                display: none;
            }
             .boardCols{
                display: block;
            }
            #wrap{
                background-color: gainsboro;
            }
            main{
                height:  1600px;
            }
            footer{
                padding-top: 5px;
            }
        }
         /* 2020.04.21 ����ȫ */
        /* ���������� ����� ���̸� �۾��� �з��� ������ ���� */
        @media(max-width:700px){

            #sidemypage > div:nth-child(2) {
                left: 70px;
                width: 70px;
                font-size: 14px;
            }

            #sidemypage > div:nth-child(3) {
                display: none;
            }       
        }
        /* 2020.04.21 ����ȫ */
        
    </style>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		boolean isLogin= false;
		String userNickname = null;
	  	String userId = null;
		try{
			isLogin = (boolean)request.getAttribute("loginck");
			if(isLogin){
				session.setAttribute("loginck", isLogin);
				userNickname = (String)session.getAttribute("loginUserNickname");
				session.setAttribute("loginUserNickname", userNickname);
				userId = (String)request.getAttribute("loginUserId");
			}else{
				//session.invalidate();
				session.setAttribute("loginck", isLogin);
				session.removeAttribute("loginUserNickname");
				session.removeAttribute("loginUserId");
			}
		}catch(NullPointerException e){
			isLogin = false;
		}
	%>
	
    <div id="wrap">
        <header>
           <div id="headCon">
                <div id="headL">
                    <div id="menuIcon">
                        <i class="fas fa-align-justify fa-2x" ></i>
                    </div>
                    <div id="logo">leon</div>
                </div>
                 <ul id="headC">
                    <li id="i1">
                        <div id="b1"><a href="BoardSearchAction.do?boardname=board_best&sc=null&keyword=null&pages=1">���帳</a></div>
                        <div class="menubo">
                            <div id="menu1" class="menu">
                               <a href="#">���帳</a>
                               <a href="#">���帳 �α��</a>
                            </div>
                        </div>
                    </li>
                     <li id="i2">
                        <div id="b2"><a href="BoardSearchAction.do?boardname=board_normal&sc=null&keyword=null&pages=1">���� ���帳</a> </div>
                        <div class="menubo">
                            <div id="menu2" class="menu">
                               <a href="#">���� ���帳</a>
                               <a href="#">�վ� ����Ʈ</a>
                            </div>
                        </div>
                    </li>
                    <li id="i3">
                        <div id="b3"><a href="BoardSearchAction.do?boardname=board_read&sc=null&keyword=null&pages=1">���� �Ÿ� ��</a></div>
                        <div class="menubo">
                            <div id="menu3" class="menu">
                                <a href="#">��ü�� ����</a>
                                <a href="#">�α��</a>
                                <a href="#">�⹦�� �̾߱�</a>
                                <a href="#">ȣ�� ����</a>
                                <a href="#">����</a>
                                <a href="#">�ڿ�</a>
                                <a href="#">����</a>
                                <a href="#">����</a>
                                <a href="#">����</a>
                                <a href="#">��Ÿ ����</a>
                            </div>
                        </div>
                    </li>
                    <li id="i4">
                        <div id="b4"><a href="BoardSearchAction.do?boardname=board_read&sc=null&keyword=null&pages=1">Ŀ�´�Ƽ</a></div>
                        <div class="menubo">
                            <div id="menu4" class="menu">
                                <a href="#">Ż�� ��</a>
                                <a href="#">�͸� ��</a>
                                <a href="#">��ǻ�� / IT ��</a>
                                <a href="#">���� ��</a>
                                <a href="#">��� ��� ��</a>
                                <a href="#">������ ��</a>
                                <a href="#">�丮 ��</a>
                                <a href="#">���� ��</a>
                                <a href="#">â�� ��</a>
                                <a href="#">���� ��</a>
                                <a href="#">��ġ ��ȸ ��</a>
                                <a href="#">���� �̽� ��</a>
                            </div>
                        </div>
                    </li>
                    <li id="i5">
                        <div id="b5"><a href="BoardSearchAction.do?boardname=board_read&sc=null&keyword=null&pages=1">���� ��</a></div>
                        <div class="menubo">
                            <div id="menu5" class="menu">
                                <a href="#">LOL</a>
                                <a href="#">���� ���� / ���� ��</a>
                                <a href="#">���� ��</a>
                                <a href="#">�ܼ� ���� ��</a>
                                <a href="#">����� ���� ��</a>
                                <a href="#">�ν�Ʈ��ũ</a>
                                <a href="#">���� �� ������</a>
                            </div>
                        </div>
                    </li>
                    <li id="i6">
                        <div id="b6"><a href="BoardSearchAction.do?boardname=board_read&sc=null&keyword=null&pages=1">������</a></div>
                        <div class="menubo">
                            <div id="menu6" class="menu">
                                <a href="#">���帳��</a>
                                <a href="#">�ɱ׷� ��</a>
                                <a href="#">©�� ��</a>
                                <a href="#">�ð� ����� (����)</a>
                            </div>
                        </div>
                    </li>
                    <li id="i7">
                        <div id="b7"><a href="BoardSearchAction.do?boardname=board_read&sc=null&keyword=null&pages=1">��Ÿ</a></div>
                        <div class="menubo">
                            <div id="menu7" class="menu">
                                <a href="#">��������</a>
                                <a href="#">���� �Ű� ��</a>
                            </div>
                        </div>
                    </li>
                </ul>        
                <div id="headR">
                   
                    <i class="fas fa-random" id="random"></i>
  <!-- �α��ι�ư -->
                    <%
						try{
							boolean loginck = (boolean)session.getAttribute("loginck");
							if(loginck != true){%>
								<input type="button" id="loginBtn" value="�α���">
						<%} else if(loginck == true) {
								String loginUserId = (String)session.getAttribute("loginUserId");
									System.out.println("Main loginUserId: "+loginUserId);
									System.out.println("Main loginUserNickName: "+userNickname);
								%>		
								<input type="button" id="logoutBtn" value="�α׾ƿ�">
						<%} 
						} catch(NullPointerException e) {%>
							<input type="button" id="loginBtn" value="�α���">
						<%}						
					%>
                   
                </div>
            </div>  
        </header>
        
        <main> 
            <div class="boardCols">
               <div class="board">
                   <table>
                      <tr>
                         <th class="main_boardname"><a href="BoardSearchAction.do?boardname=board_best&sc=null&keyword=null&pages=1">���帳</a></th>
                      </tr>
                      <%
    				SearchDAO dao1 = new SearchDAO();
					Vector<SearchDTO> dto1 = dao1.mainlist("board_best",15);
					for(int i=0;i<dto1.size();i++){ 
    				%>
    					 <tr>
                              <td><a href="Post.do?boardname=board_best&idx=<%=dto1.get(i).getIdx()%>"><%=dto1.get(i).getTitle() %><span><%=dto1.get(i).getComnum() %></span></a></td>                              
                          </tr>
                          
                      <%
			} 
			%>
                   </table>
               </div> 
               <div >
                   <div class="board">
                       <table>
                          <tr>
                             <th class="main_boardname"><a href="BoardSearchAction.do?boardname=board_normal&sc=null&keyword=null&pages=1">���� ���帳</a></th>
                          </tr>
                         <%
    				SearchDAO dao2 = new SearchDAO();
					Vector<SearchDTO> dto2 = dao2.mainlist("board_normal",7);
					for(int i=0;i<dto2.size();i++){ 
    			%>
    					 <tr>
                              <td><a href="Post.do?boardname=board_normal&idx=<%=dto2.get(i).getIdx()%>"><%=dto2.get(i).getTitle() %><span><%=dto2.get(i).getComnum() %></span></a></td>                              
                          </tr>
                          
                      <%
			} 
			%>                       
                       </table>
                   </div>
                   <div class="board">
                       <table>
                          <tr>
                             <th class="main_boardname"><a href="BoardSearchAction.do?boardname=board_read&sc=null&keyword=null&pages=1">���� �Ÿ� ��</a></th>
                          </tr>
                          <%
    				SearchDAO dao3 = new SearchDAO();
					Vector<SearchDTO> dto3 = dao3.mainlist("board_read",5);
					for(int i=0;i<dto3.size();i++){ 
    			%>
    					 <tr>
                              <td ><a href="Post.do?boardname=board_read&idx=<%=dto3.get(i).getIdx()%>"><%=dto3.get(i).getTitle() %><span><%=dto3.get(i).getComnum() %></span></a></td>                              
                          </tr>
                          
                      <%
			} 
			%>                                                   
                       </table>
                   </div>
               </div>
            </div> 
            <div class="boardCols">
                <div class="board">
                    <table>
                          <tr>
                             <th class="main_boardname"><a href="BoardSearchAction.do?boardname=board_read&sc=null&keyword=null&pages=1">���� ���� / ���� ��</a></th>
                          </tr>
                         <%
    				SearchDAO dao4 = new SearchDAO();
					Vector<SearchDTO> dto4 = dao4.mainlist("board_game",5);
					for(int i=0;i<dto4.size();i++){ 
    			%>
    					 <tr>
                              <td><a href="Post.do?boardname=board_game&idx=<%=dto4.get(i).getIdx()%>"><%=dto4.get(i).getTitle() %><span><%=dto4.get(i).getComnum() %></span></a></td>                              
                          </tr>
                          
                      <%
			} 
			%>                                             
                       </table>
                </div>
                <div class="board">
                    <table>
                          <tr>
                             <th class="main_boardname"><a href="BoardSearchAction.do?boardname=board_read&sc=null&keyword=null&pages=1">Ż�� ��</a></th>
                          </tr>
				<%
    				SearchDAO dao5= new SearchDAO();
					Vector<SearchDTO> dto5 = dao5.mainlist("board_ride",5);
					for(int i=0;i<dto5.size();i++){ 
    			%>
    					 <tr>
                              <td><a href="Post.do?boardname=board_ride&idx=<%=dto5.get(i).getIdx()%>"><%=dto5.get(i).getTitle() %><span><%=dto5.get(i).getComnum() %></span></a></td>                              
                          </tr>
                          
                      <%
			} 
			%>
				</table>
                </div>
            </div>
        </main>
        
<!-- �ٴڱ� -->
   <footer>
       <div id="footme">
            <a href="https://www.dogdrip.net/dogdrip">���帳</a>
            <a href="https://www.dogdrip.net/userdog">���� ���帳</a>
            <a href="https://www.dogdrip.net/doc">���� �Ÿ� ��</a>
            <a href="https://www.dogdrip.net/communitypage">Ŀ�´�Ƽ</a>
            <a href="https://www.dogdrip.net/game">���� ��</a>
            <a href="https://www.dogdrip.net/pic">������</a>
            <a href="https://www.dogdrip.net/notice">��Ÿ</a>
        </div>
        <br><br>
        Copyright (c) DogDrip.net All Right Reserved.<br>
        <br>
        Contact us, dogdripper at gmail dot com<br><br>
        <div id="footetc">
         <a href="https://www.dogdrip.net/policy">�̿���</a> |
         <a href="https://www.dogdrip.net/privacy">����������޹�ħ</a>
         </div>
         <br><br><br>
    </footer>
    
<!-- ���̵� -->
    <sidebar>
        <div id="side">
        <!-- 2020.04.21 ����ȫ  -->
            <%try{
            	boolean loginck = (boolean)session.getAttribute("loginck");
            	if(loginck != true){ 
           	%>
           	     <div id="sidemypage" onclick="loginfun()">
           		 <i class="fas fa-user-circle fa-3x"></i>
           		 <div>�α��� �� ȸ������</div>
           		 <div>ȸ�������ϼ���!</div>
          
           	<%
            	} else if(loginck == true){
            		/* �α����� �Ǿ��ٸ� ���ǿ� ����� id�� nickname�� �����ͼ� ������ ���� */
            		String loginUserId = (String)session.getAttribute("loginUserId");
            		String loginUserNick = (String)session.getAttribute("loginUserNickname");
            %>
            	<div id="sidemypage">
           		<i class="fas fa-user-circle fa-3x"></i>
            	<div><%=(String)session.getAttribute("loginUserNickname")%>�� �ȳ��ϼ���</div> <!-- nickname�� ǥ���ؾ� �ϴµ� �ڲ� null ���� �ӽ÷� id�� ǥ����  -->
            	<form name="mypageform">
            		<input id="myPageBtn" type="button" value="My Page" onclick="mypagefun()">
              	</form>
            <%
            	}
            } catch(NullPointerException e){
            %>
            	<div id="sidemypage" onclick="loginfun()">
           		<i class="fas fa-user-circle fa-3x"></i>
            	<div>�α��� �� ȸ������</div>
           		<div>ȸ�������ϼ���!</div>
            <%
            }
            %>

        </div>
        <!-- 2020.04.21 ����ȫ  -->
        <div id="sidemenu">
            <div class="sidemenus">
                <div class="sidemenut">���帳</div>
                <div class="sidemenuc">���帳</div>
                <div class="sidemenuc">���帳 �α��</div>
            </div>
            <div class="sidemenus">
                <div class="sidemenut">���� ���帳</div>
                <div class="sidemenuc">���� ���帳</div>
                <div class="sidemenuc">�վ� ����Ʈ</div>
            </div>
            <div class="sidemenus">
                <div class="sidemenut">���� �Ÿ� ��</div>
                <div class="sidemenuc">��ü �� ����</div>
                <div class="sidemenuc">�α��</div>
                <div class="sidemenuc">�⹦�� �̾߱�</div>
                <div class="sidemenuc">ȣ�� ����</div>
                <div class="sidemenuc">����</div>
                <div class="sidemenuc">�ڿ�</div>
                <div class="sidemenuc">����</div>
                <div class="sidemenuc">����</div>
                <div class="sidemenuc">����</div>
                <div class="sidemenuc">��Ÿ ����</div>
            </div>
            <div class="sidemenus">
                <div class="sidemenut">Ŀ�´�Ƽ</div>
                <div class="sidemenuc">Ż�� ��</div>
                <div class="sidemenuc">�͸� ��</div>
                <div class="sidemenuc">��ǻ�� / IT ��</div>
                <div class="sidemenuc">���� ��</div>
                <div class="sidemenuc">��� ��� ��</div>
                <div class="sidemenuc">������ ��</div>
                <div class="sidemenuc">�丮 ��</div>
                <div class="sidemenuc">���� ��</div>
                <div class="sidemenuc">â�� ��</div>
                <div class="sidemenuc">���� ��</div>
                <div class="sidemenuc">��ġ ��ȸ ��</div>
                <div class="sidemenuc">���� �̽� ��</div>
            </div>
             <div class="sidemenus">
                <div class="sidemenut">���� ��</div>
                <div class="sidemenuc">LOL</div>
                <div class="sidemenuc">���� ���� / ���� ��</div>
                <div class="sidemenuc">���� ��</div>
                <div class="sidemenuc">�ܼ� ���� ��</div>
                <div class="sidemenuc">����� ���� ��</div>
                <div class="sidemenuc">�ν�Ʈ��ũ</div>
                <div class="sidemenuc">���� �� ������</div>
            </div>
             <div class="sidemenus">
                <div class="sidemenut">������</div>
                <div class="sidemenuc">���帳��</div>
                <div class="sidemenuc">�ɱ׷� ��</div>
                <div class="sidemenuc">©�� ��</div>
                <div class="sidemenuc">�ð� ����� (����)</div>
            </div>
             <div class="sidemenus">
                <div class="sidemenut">��Ÿ</div>
                <div class="sidemenuc">��������</div>
                <div class="sidemenuc">���� �Ű� ��</div>
            </div>
        </div>
        </div>
             <div id="sideback">
             </div>
    </sidebar>
<!--�α���â-->
        <div id="loginWrap">
            <div id="loginBack">
            </div>
            <form action="loginpage.do" id="login-form" method="post">
                <h1>�α���</h1>
                <div class="txtb">
                    <input type="text" name="id" id="logId">
                    <span data-placeholder="���̵�"></span>
                </div>

                <div class="txtb">
                    <input type="password" name="pw" id="logPw">
                    <span data-placeholder="��� ��ȣ"></span>
                </div>

                <input type="button" id="goLogin" class="logbtn" value="Login">
                <div class="bottom-text">
                    <a href="SignUp.do">ȸ������ �ϱ�</a>                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;  &nbsp; &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;       
                    <a href="FindId.do">ID/PW ã��</a>        
                </div>
            </div>    
        </div>
    </div>
    
<script>
        $(document).ready(function(){ 
            $("#menuIcon").mouseenter(function(){
                $("div i").switchClass("fa-align-justify ","fa-align-left",500);
            });
             $("#menuIcon").mouseleave(function(){
                $("div i").switchClass("fa-align-left","fa-align-justify",500);
            });
            $("#menuIcon").click(function(){
                $("sidebar").css("display","flex");
            });
            $("#sideback").click(function(){
               $("sidebar").css("display","none");
                
            });
            
            
            /* �޴����� */
             $("#headC li div").mouseenter(function(){                
               if($(this).is("#b1")){
                   
                   $("#menu1").css("opacity","100%");
                   $("#menu1").css("width","0px");
                   $("#menu1").css("height","0px");
                   $("#menu1").animate({width : "200px",height:"100px"});
                  $("#menu1 a").css("display", "block");
               }
                else if($(this).is("#b2")){
                    
                   $("#menu2").css("opacity","100%");
                   $("#menu2").css("width","0px");
                    $("#menu2").css("height","0px");
                   $("#menu2").animate({width : "200px",height:"100px"});
                   $("#menu2 a").css("display", "block");
               }
                else if($(this).is("#b3")){
                    
                   $("#menu3").css("opacity","100%");
                   $("#menu3").css("width","0px");
                    $("#menu3").css("height","0px");
                   $("#menu3").animate({width : "200px",height:"350px"});
                   $("#menu3 a").css("display", "block");
               }
                else if($(this).is("#b4")){
                    
                   $("#menu4").css("opacity","100%");
                   $("#menu4").css("width","0px");
                    $("#menu4").css("height","0px");
                   $("#menu4").animate({width : "200px",height:"410px"});
                   $("#menu4 a").css("display", "block");
               }
                else if($(this).is("#b5")){
                    
                   $("#menu5").css("opacity","100%");
                   $("#menu5").css("width","0px");
                    $("#menu5").css("height","0px");
                   $("#menu5").animate({width : 
                    "200px",height:"250px"});
                   $("#menu5 a").css("display", "block");
               }
                else if($(this).is("#b6")){
                   $("#menu6").css("opacity","100%");
                   $("#menu6").css("width","0px");
                    $("#menu6").css("height","0px");
                   $("#menu6").animate({width : "200px",height:"160px"});
                   $("#menu6 a").css("display", "block");
               }
                else if($(this).is("#b7")){
                   $("#menu7").css("opacity","100%");
                   $("#menu7").css("width","0px");
                    $("#menu7").css("height","0px");
                   $("#menu7").animate({width : "200px",height:"100px"});
                   $("#menu7 a").css("display", "block");
               }
                
            });
            
            
         
            
            $("#headC li").mouseleave(function(){
                if($(this).is("#i1")){
                    $("#menu1").animate({
                        width : "0px",
                        opacity:"0%",
                        height:"0px"
                    },500,function(){
                        
                   $("#menu1").css("width","200px");
                   $("#menu1 a").css("display", "none"); 	
                    });
                    
               }
                else if($(this).is("#i2")){
                    $("#menu2").animate({
                        width:"0px",
                         opacity:"0%",
                        height:"0px"
                        });
                   $("#menu2").css("width","200px");
                   $("#menu2 a").css("display", "none");
               }
                else if($(this).is("#i3")){
                    $("#menu3").animate({
                        width:"0px",
                         opacity:"0%",
                        height:"0px"
                        });
                   $("#menu3").css("width","200px");
                   $("#menu3 a").css("display", "none");
               }
                else if($(this).is("#i4")){
                    $("#menu4").animate({
                        width:"0px",
                         opacity:"0%",
                        height:"0px"
                        });
                   $("#menu4").css("width","200px");
                   $("#menu4 a").css("display", "none");
               }
                else if($(this).is("#i5")){
                    $("#menu5").animate({
                        width:"0px",
                         opacity:"0%",
                        height:"0px"
                        });
                   $("#menu5").css("width","200px");
                   $("#menu5 a").css("display", "none");
               }
                else if($(this).is("#i6")){
                    $("#menu6").animate({
                        width:"0px",
                         opacity:"0%",
                        height:"0px"
                        });
                   $("#menu6").css("width","200px");
                   $("#menu6 a").css("display", "none");
               }
                else if($(this).is("#i7")){
                    $("#menu7").animate({
                        width:"0px",
                         opacity:"0%",
                        height:"0px"
                        });
                   $("#menu7").css("width","200px");
                   $("#menu7 a").css("display", "none");
               }
                
            });
            
            /*�α��ι�ư*/
             $("#loginBtn").click(function(){
                $("#loginBtn").animate({
                        backgroundColor: 'deepskyblue',
                        opacity: "30%"
                },400,function(){
                    $("#loginBtn").animate({
                        backgroundColor: 'snow',
                        opacity: "100%"
                    });                        
                });
                 $("#loginWrap").fadeIn();
             });
            
            /*������ư*/
            $("#random").click(function(){
                 $("#random").animate({
                        Color: 'deepskyblue',
                        opacity: "30%"
                },400,function(){
                    $("#random").animate({
                        Color: 'snow',
                        opacity: "100%"
                    });                        
                });
            });
            
           /*�α���ȭ�� */
            $(".txtb input").on("focus",function(){
                $(this).addClass("focus");
            });
        
            $(".txtb input").on("blur",function(){
                if($(this).val()=="")
                $(this).removeClass("focus");
            });
             $("#loginBack").click(function(){
               $("#loginWrap").fadeOut();
                
            });
            
           
            
            /* �α��ι�ư */    
        	$("#goLogin").click(function(){
        		var id = $("#logId").val();
        		var pw = $("#logPw").val();
        		if(id!="" && pw!=""){
        			$("#login-form").submit();
        		}else{
        			alert("���̵� Ȥ�� ��й�ȣ�� �Էµ��� �ʾҽ��ϴ�.");
        		}        		
        	});
        	$("#logoutBtn").click(function(){
        		location.href="goLogout.do";
        	});
        	$("#logo").click(function(){
        		location.href="Main.do";
        	});
        	
        	
        });
        /* 2020.04.21 ����ȫ */
        /* Ŭ�� �� �α��� ȭ���� fadeIn���� ��Ÿ���鼭 sidebar�� ����� */
        function loginfun(){
            $("#loginWrap").css("z-index", 100);
            $("sidebar").css("display", "none");
            $("#loginWrap").fadeIn(); 
           /*  ���� */
		}
        
        /* ���������� ��ư�� ������ �̵� */
        function mypagefun(){
			location.href="MyPage.do";
        }
        /* 2020.04.21 ����ȫ */
    </script>
</body>
</html>