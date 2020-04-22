<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<%@ page import="mypack.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
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
            height: 1200px;
            /*background-color: gainsboro;*/
            background-color: rgba(1,1,1,0.1);
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
         #headL a:VISITED{ /* ���� */        
            color: snow;
        }
        a{
        	color:gainsboro;
        }
        a:VISITED{
        	color: gainsboro;
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
        .menu a{
        	color:black;
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
        
         #searchi{
            padding-top: 5px;
            margin-right: 10px;
            cursor: pointer;
        }
        #searchbox{
            box-shadow: 0px 10px 10px 5px gainsboro;
            border-radius: 10px;
            width: 400px;
            height: 50px;
            position: absolute;
            margin-top: 22px;
            margin-left: -300px;
            padding: 10px;
            padding-left: 15px;
            background-color: white;
            display: none;
            z-index: 20;
            
        }
        select{
            font-size: 21px;
            vertical-align: bottom
        }
        #searchinput{
            font-size: 20px;
        }
        #searchsubmit{
            color: black;
            cursor: pointer;
        }
        
        #random{
            padding-top: 5px;
            margin-right: 20px;
            cursor: pointer;
        }
        
        main{
            width: 1080px;
            height: 850px;
            /*background-color: rgba(1,1,1,0.1);*/
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
        .menu a{
            margin: 5px;            
        }
        .menu a:link{
            color: black;
        } 
        .menu a:visited{
            color: black;
        }
        
         /* Ǫ�� �κ� */
        footer{
            font-size: 12px;
            color: gray;
           /* background-color: gainsboro;  */          
           /* background-color: rgba(1,1,1,0.1);*/
            margin: 0 auto;
            width: 500px;
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
        .bottom-text{
            margin-top: 30px;
            text-align: center;
            font-size: 13px;
        }
        
        
/*ȸ��������*/
        #signup-form{
        width:500px;
        background: snow;
        height: 800px;
        padding:  80px 40px;
        border-radius: 10px;
        position: absolute;
        left: 50%;
        top: 500px;
        transform: translate(-50%,-50%);
        }

        #signup-form h1{
            text-align: center;
            margin-bottom: 60px;
        }
        .txts{
            border-bottom: 2px solid #adadad;
            position: relative;
            margin: 30px 0;
            width: 300px;
            display: flex;
        }
        .txts input{
            font-size: 15px;
            color: #333;
            border:none;
            width: 80%;
            outline: none;
            background: none;
            padding: 0 5px;
            height: 40px;
        }
        #confire{
            display: block;
            position: absolute;
            left: 330px;
            width: 30%;
            border-radius: 15px;
            cursor: pointer;
            border: none;
            background:  linear-gradient(120deg,steelblue,dodgerblue);
             background-size: 200%;
            color: #fff;
            outline: none;        
            transition: .5s;
        }
        .txts span::before{        
            content: attr(data-placeholder);
            position: absolute;
            top: 50%;
            left: 5px;
            color: #adadad;
            transform: translateY(-50%);
            z-index: -1;
            transition: 0.5s;
        }
        .txts span::after{

            content: '';
            position: absolute;
            width: 0%;
            height: 2px;
            transition: 0.5s;
            top: 40px;
            left: 0px;
        }
        .focus + span::before{
            top: -5px;
        }
        .focus + span::after{
            width: 100%;
        }
        .success + span::after{
            width: 100%;
            background: linear-gradient(120deg,deepskyblue,darkblue);
        }
        .fail + span::after{        
            width: 100%;
            background: linear-gradient(120deg,lightcoral,red);
        }
        .signupbtn{

            display: block;
            width: 100%;
            height: 50px;
            border: none;
            font-size: 25px;
            background:  linear-gradient(120deg,steelblue,dodgerblue);
            border-radius: 10px;
            background-size: 200%;
            color: #fff;
            outline: none;
            cursor: pointer;
            transition: .5s;

        }
        .signupbtn:hover{
            background-position: right;        
        }
        .bottom-text2{
            margin-top: 30px;
            text-align: center;
            font-size: 20px;           
        }
        .bottom-text a{
        	color: black;
        }
        .bottom-text2 a{
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
        @media(max-width:1080px){/*��Ÿ*/
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
        @media(max-width:1000px){/*������*/
            #b6{
                display: none;
            }
        }
        @media(max-width:910px){/*������*/
            #b5{
                display: none;
            }
            
        }
        @media(max-width:810px){/*Ŀ�´�Ƽ*/
            #b4{
                display: none;
            }
           
        }
        @media(max-width:710px){/*�����Ÿ���*/
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
        
    </style>
</head>
<body>
	<%
		boolean isLogin= false;
		String userNickname = null;
		
		try{
			isLogin = (boolean)request.getAttribute("loginck");
			if(isLogin){
				session.setAttribute("loginck", isLogin);
				userNickname = (String)request.getAttribute("loginUserNickname");
				session.setAttribute("loginUserNickname", userNickname);
			}else{
				//session.invalidate();
				session.setAttribute("loginck", isLogin);
				session.removeAttribute("loginUserNickname");
			}
		}catch(NullPointerException e){
			isLogin = false;
		}
	%>
	<%
		boolean idC = false;
		boolean pw1C = false;
		boolean pw2C = false;
		boolean nickC = false;		
		boolean emailC = false;
		boolean codeC = true;
		try{
			idC = (boolean)request.getAttribute("isIdCon");
			if(idC==false){
				String userId = (String)request.getAttribute("userId");
				session.setAttribute("userId", userId);
			}else{
				session.setAttribute("userId", "duplication");
			}
		}catch(NullPointerException e){
			idC = true;
		}
		
		try{
			pw1C = (boolean)request.getAttribute("isPw1");
			if(pw1C==true){//1��° ��й�ȣ ���� �����Ҷ�
				String pw1= (String)request.getAttribute("pw1");
				session.setAttribute("pw1", pw1);
				String pw2= (String)request.getAttribute("pw2");
				session.setAttribute("pw2", pw2);
			}
			else{
				session.setAttribute("pw1", "nothing");
			}
		}catch(NullPointerException e){
			pw1C = false;
		}
		
		
		try{
			nickC = (boolean)request.getAttribute("isNickCon");
			if(nickC==false){//�г����� �ߺ� ���� ������
				String userNick = (String)request.getAttribute("userNick");
				session.setAttribute("userNick", userNick);
			}else{
				session.setAttribute("userNick", "duplication");
			}
		}catch(NullPointerException e){
			nickC = true;
		}
		
		try{
			emailC = (boolean)request.getAttribute("isEmailCon");
			if(emailC==false){//�̸����� �ߺ� ���� ������
				String userEmail = (String)request.getAttribute("userEmail");
				session.setAttribute("userEmail3", userEmail);
				String orgCode = (String)request.getAttribute("attk");
				session.setAttribute("orgcode1", orgCode);
				System.out.println("orgCode:"+ orgCode);
			}else{
				session.setAttribute("userEmail3", "duplication");
			}
		}catch(NullPointerException e){
			emailC = true;
		}
		
		try{
			codeC = (boolean)request.getAttribute("isCodeCon");
			if(codeC== false){//������ȣ ������ �Ǹ� false
				String userCode = (String)request.getAttribute("userCode");				
				System.out.println("userCode : "+userCode);
				session.setAttribute("userCode", userCode);
			}else{
				session.setAttribute("userCode", "fail");
			}
		}catch(NullPointerException e){
			codeC = true;
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
                    <div id="search">
                        <i class="fas fa-search" id="searchi"></i>
                        <div id="searchbox">
                           <select name="sc">
                            <option value="title">����</option>
                            <option value="contents">����</option>
                            <option value="writer">�۾���</option>
                            </select> 
                            <input type="text" size="20" name="keyword" id="searchinput">
                            <i class="fas fa-search" id="searchsubmit"></i>
                            </div>
                    </div>
                    <i class="fas fa-random" id="random"></i>
                    <!-- �α��ι�ư -->
                    <%
						try{
							boolean loginck = (boolean)session.getAttribute("loginck");
							if(loginck != true){%>
								<input type="button" id="loginBtn" value="�α���">
						<%} else if(loginck == true) {
								String loginUserNickname = (String)session.getAttribute("loginUserNickname");%>		
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
           <form id="signup-form" action="join.do" method="post">
            <h1>ȸ������</h1>            
                <div class="txts">
                    <input type="text" id="idtf" name="id"  value="<%= session.getAttribute("userId") %>" >
                    <span data-placeholder="���̵�"></span>                    
                    <input type="button" value="�ߺ�Ȯ��" id="confire" class="idC">
                    <% System.out.println("userId="+session.getAttribute("userId"));%>
                </div>
            <div class="txts">
                <input type="password" id="pw1" name="pw" value="<%= session.getAttribute("pw1") %>">
                <span data-placeholder="��� ��ȣ"></span>          
                <%System.out.println("pw1 : "+session.getAttribute("pw1")); %>      
            </div>
            
            <div class="txts">
                <input type="password" id="pw2" name="pwck" value="<%= session.getAttribute("pw2") %>">
                <span data-placeholder="��� ��ȣ Ȯ��"></span>
                <%System.out.println("pw2 : "+session.getAttribute("pw2")); %>
            </div>
            
            <div class="txts">
                <input type="text" id="nick" name="nick" value="<%= session.getAttribute("userNick") %>">
                <span data-placeholder="�г���"></span>                
                <input type="button" value="�ߺ�Ȯ��" id="confire" class="nickC">
            </div>
            
            <div class="txts">
                <input type="text" id="email" name="email" value="<%= session.getAttribute("userEmail3") %>">
                <span data-placeholder="�̸���"></span>               
                <input type="button" value="������û" id="confire" class="emailC">
            </div>
            
            <div class="txts">
                  <input type="text" id="vcode" name="vcode" value="<%= session.getAttribute("userCode") %>">
                  <span data-placeholder="������ȣ"></span>
                  <input type="button" value="��ȣȮ��" id="confire" class="codeC">
             </div>

                <input type="button" id= "signUpBtn" class="signupbtn" value="�����ϱ�">
                <div class="bottom-text2">
                <a href="Main.do">�������� ����</a>   &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;       
                    <a href="FindId.do">ID/PW ã��</a>        
                </div>
            </form> 
        </main>
       <!--  <iframe name='ifrm' width='0' height='0' frameborder='0'></iframe> -->
        <input type="hidden" id="orgcode1" name="vcode" value="<%= session.getAttribute("orgcode1") %>">
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
         <a href="https://www.dogdrip.net/policy">�̿���</a> 
         <a href="https://www.dogdrip.net/privacy">����������޹�ħ</a>
         </div>
         <br><br><br>
    </footer>
 <sidebar>
        <div id="side">
        <div id="sideimg">
            <img src="img/sideimg.PNG">
        </div>
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
    
 <div id="loginWrap">
            <div id="loginBack">
            </div>
            <form action="loginpage.do" id="login-form">
                <h1>�α���</h1>
                <div class="txtb">
                    <input type="text" id="logId" name="id">
                    <span data-placeholder="���̵�"></span>
                </div>

                <div class="txtb">
                    <input type="password" id="logPw" name="pw">
                    <span data-placeholder="��� ��ȣ"></span>
                </div>

                <input type="button" id="goLogin" class="logbtn" value="Login">
                <div class="bottom-text">
                    <a href="SignUp.do">ȸ������ �ϱ�</a>  
                     &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;  &nbsp; &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;       
                    <a href="FindId.do">ID/PW ã��</a>        
                </div>
            </form>    
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
            
            
            
             $("#headC li div").mouseenter(function(){                
               if($(this).is("#b1")){
                   
                   $("#menu1").css("opacity","100%");
                   $("#menu1").css("width","0px");
                   $("#menu1").css("height","0px");
                   $("#menu1").animate({width : "200px",height:"100px"});
                  
               }
                else if($(this).is("#b2")){
                    
                   $("#menu2").css("opacity","100%");
                   $("#menu2").css("width","0px");
                    $("#menu2").css("height","0px");
                   $("#menu2").animate({width : "200px",height:"100px"});
               }
                else if($(this).is("#b3")){
                    
                   $("#menu3").css("opacity","100%");
                   $("#menu3").css("width","0px");
                    $("#menu3").css("height","0px");
                   $("#menu3").animate({width : "200px",height:"350px"});
                    
               }
                else if($(this).is("#b4")){
                    
                   $("#menu4").css("opacity","100%");
                   $("#menu4").css("width","0px");
                    $("#menu4").css("height","0px");
                   $("#menu4").animate({width : "200px",height:"410px"});
                    
               }
                else if($(this).is("#b5")){
                    
                   $("#menu5").css("opacity","100%");
                   $("#menu5").css("width","0px");
                    $("#menu5").css("height","0px");
                   $("#menu5").animate({width : 
                    "200px",height:"250px"});
                    
               }
                else if($(this).is("#b6")){
                   $("#menu6").css("opacity","100%");
                   $("#menu6").css("width","0px");
                    $("#menu6").css("height","0px");
                   $("#menu6").animate({width : "200px",height:"160px"});
                    
               }
                else if($(this).is("#b7")){
                   $("#menu7").css("opacity","100%");
                   $("#menu7").css("width","0px");
                    $("#menu7").css("height","0px");
                   $("#menu7").animate({width : "200px",height:"100px"});
                    
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
                    });
               }
                else if($(this).is("#i2")){
                    $("#menu2").animate({
                        width:"0px",
                         opacity:"0%",
                        height:"0px"
                        });
                   $("#menu2").css("width","200px");
               }
                else if($(this).is("#i3")){
                    $("#menu3").animate({
                        width:"0px",
                         opacity:"0%",
                        height:"0px"
                        });
                   $("#menu3").css("width","200px");
               }
                else if($(this).is("#i4")){
                    $("#menu4").animate({
                        width:"0px",
                         opacity:"0%",
                        height:"0px"
                        });
                   $("#menu4").css("width","200px");
               }
                else if($(this).is("#i5")){
                    $("#menu5").animate({
                        width:"0px",
                         opacity:"0%",
                        height:"0px"
                        });
                   $("#menu5").css("width","200px");
               }
                else if($(this).is("#i6")){
                    $("#menu6").animate({
                        width:"0px",
                         opacity:"0%",
                        height:"0px"
                        });
                   $("#menu6").css("width","200px");
               }
                else if($(this).is("#i7")){
                    $("#menu7").animate({
                        width:"0px",
                         opacity:"0%",
                        height:"0px"
                        });
                   $("#menu7").css("width","200px");
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
               /*$("#loginWrap").css("display","none");*/
                $("#loginWrap").fadeOut();
            });
            
            /*ȸ������*/
            $(".txts input").on("focus",function(){
                $(this).addClass("focus");          
            });
            $(".txts input").on("blur",function(){
                if($(this).val()=="")
                $(this).removeClass("focus");
            });
                
                
             /*��ġ�ڽ�*/
            $("#searchi").click(function(){
                $("#searchbox").css({'display': 'block', 'opacity': 0}).animate({'opacity': 1}, 300);
            });
            
            $('html').click(function(e){
                if($(e.target).is("#searchi")){}
                else if($(e.target).is("#searchbox")){}
                else if($(e.target).is("#searchinput")){}
                else if($(e.target).is("select")){}
                else if($(e.target).is("#searchsubmit")){
                    $(location).attr('href',"SearchAction.do?sc="+$("select").val()+"&keyword="+$("#searchinput").val());
                }
                else{$("#searchbox").animate({'display': 'block','opacity': 0}, 300);}
            });
            /* �α��ι�ư */    
        	$("#goLogin").click(function(){
        		var id = $("#logId").val();
        		var pw = $("#logPw").val();
        		//alert("id: "+id+",pw: "+pw);
        		if(id!="" && pw!="" ){
        			$("#login-form").submit();
        		}else{
        			alert("���̵� Ȥ�� ��й�ȣ�� �Էµ��� �ʾҽ��ϴ�.");
        		}        		
        	});
        	$("#logoutBtn").click(function(){
        		location.href="goLogout.do";
        	});
        	
        	$(".idC").click(function(){
        		var id = $("#idtf").val();   
        		var pw1 = $("#pw1").val();
        		var pw2 = $("#pw2").val();
        		if(id != ""){ // id üũ ������ �̵�        			
        			if(id.length > 12){ // id ���� ����
        				alert("���̵�� 12���ڱ��� �����մϴ�.");
        			} else {        				
        				location.href="signUP2.do?id="+id+"&num=1"+"&pw1="+pw1+"&pw2="+pw2;
        			}
        		}else{
        			alert("���̵� �Է����ּ���");
        		}
        	});
        	$(".nickC").click(function(){
        		var nick = $("#nick").val();
        		var pw1 = $("#pw1").val();
        		var pw2 = $("#pw2").val();
        		if(nick !=""){
					location.href="signUP2.do?nick="+nick+"&num=2"+"&pw1="+pw1+"&pw2="+pw2;
				}else{
					alert("�г����� �Է����ּ���");
				}
        	});
        	$(".emailC").click(function(){
        		var email = $("#email").val();
        		var pw1 = $("#pw1").val();
        		var pw2 = $("#pw2").val();
        		// ���Խ� ����. �̸��� ����(x@x.x)�� �ƴ� ��� ����â ���
    			var exptext = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;
    			if(exptext.test(email) == false){
    				alert("�̸��� ������ �ùٸ��� �ʽ��ϴ�.");
    			} else {
    				if(email !=""){
    					location.href="signUP2.do?email="+email+"&num=3"+"&pw1="+pw1+"&pw2="+pw2;
    				}
    			}
        	});
        	
        	$(".codeC").click(function(){
        		var code = $("#vcode").val();
        		var pw1 = $("#pw1").val();
        		var pw2 = $("#pw2").val();
        		if(code !=""){
        			location.href="signUP2.do?code="+code+"&orgCode="+$("#orgcode1").val()+"&num=4"+"&pw1="+pw1+"&pw2="+pw2;
        		}else{
        			alert("������ȣ�� �Է����ּ���");
        		}
        	});
        	//���̵� �κ�
        	if($("#idtf").val()!="null" && $("#idtf").val()!='duplication'){
        		$("#idtf").addClass("success");
        		$("#idtf").addClass("focus");
        	}else if($("#idtf").val()=='duplication'){
        		$("#idtf").val('');
        		$("#idtf").focus();
        		$("#idtf").addClass("fail");
        		$("#idtf").addClass("focus");
        	}else{
        		$("#idtf").val('');
        		$("#idtf").focus();
        		$("#idtf").addClass("focus");
        	}
        	//1��° ��й�ȣ �κ�
        	if($("#pw1").val()!="null" && $("#pw1").val()!='nothing' ){
        		$("#pw1").addClass("success");
        		$("#pw1").addClass("focus");
        		$("#pw2").addClass("success");
        		$("#pw2").addClass("focus");
        	}else if($("#pw1").val()=='nothing'){
        		$("#pw1").val('');
        		$("#pw1").addClass("fail");
        		$("#pw1").addClass("focus");
        		//$("#pw1").focus();
        		$("#pw2").val('');
        		$("#pw2").addClass("fail");
        		$("#pw2").addClass("focus");
        	}else{
        		$("#pw1").val('');
        		$("#pw2").val('');
        	}
        	
        	        	
        	//�г��� �κ�
        	if($("#nick").val()!="null" && $("#nick").val()!='duplication'){
        		$("#nick").addClass("success");
        		$("#nick").addClass("focus");
        	}else if($("#nick").val()=='duplication'){
        		$("#nick").val('');
        		$("#nick").focus();
        		$("#nick").addClass("fail");
        		$("#nick").addClass("focus");
        	}else{
        		$("#nick").val('');
        	}
        	//�̸��� �κ�
        	if($("#email").val()!="null" && $("#email").val()!='duplication'){
        		$("#email").addClass("success");
        		$("#email").addClass("focus");
        	}else if($("#email").val()=='duplication'){
        		$("#email").val('�̹� ��ϵ� �̸������ֽ��ϴ�.');
        		$("#email").focus();
        		$("#email").addClass("fail");
        		$("#email").addClass("focus");
        	}else{
        		$("#email").val('');
        	}
        	//�����ڵ� �κ�
        	if($("#vcode").val()!="null" && $("#vcode").val()!='fail'){
        		$("#vcode").addClass("success");
        		$("#vcode").addClass("focus");
        		
        	}else if($("#vcode").val()=='fail'){
        		$("#vcode").val('�߸� �Է��ϼ̽��ϴ�.');
        		$("#vcode").focus();
        		$("#vcode").addClass("fail");
        		$("#vcode").addClass("focus");        		
        	}else{
        		$("#vcode").val('');
        	}
        	
  		//��й�ȣ ��Ŀ�� ������      	
        	/*  $("#pw1").on("blur",function(){ */
        	$("#pw1").focusout(function(){
        		
        		var pw1 = $("#pw1").val();
        		var pw2 = $("#pw2").val();
        		$("#pw1").removeClass("fail");
             	 $("#pw2").removeClass("fail");
             	 $("#pw1").removeClass("success");
             	 $("#pw2").removeClass("success");
        		if(pw1!="" && pw2!=""){
        			if(pw1 == pw2){        			 	 
	                   	 $("#pw1").addClass("success");
	                   	 $("#pw2").addClass("success");	
        			}else{
        				 $("#pw1").addClass("fail");
	                   	 $("#pw2").addClass("fail");
        			}
        		}else{
        			$("#pw1").addClass("fail");
                  	$("#pw2").addClass("fail");
        		}
        		//location.reload();
        		/* 
                 if($("#pw1").val().length==$("#pw2").val().length ){
                	 
                	 $("#pw1").removeClass("fail");
                	 $("#pw2").removeClass("fail");
                	 $("#pw1").removeClass("success");
                	 $("#pw2").removeClass("success");
                	 $("#pw1").addClass("success");
                	 $("#pw2").addClass("success");
                 }else{
                	 $("#pw1").removeClass("success");
                	 $("#pw2").removeClass("success");
                	 $("#pw1").removeClass("fail");
                	 $("#pw2").removeClass("fail");
                	 $("#pw1").addClass("fail");
                	 $("#pw2").addClass("fail");
                 } */
             }); 
        	
        	 /* $("#pw2").on("blur",function(){ */
        	$("#pw2").focusout(function(){
        		
        		var pw1 = $("#pw1").val();
        		var pw2 = $("#pw2").val();
        		$("#pw1").removeClass("fail");
             	 $("#pw2").removeClass("fail");
             	 $("#pw1").removeClass("success");
             	 $("#pw2").removeClass("success");
        		if(pw1!="" && pw2!=""){
        			if(pw1 == pw2){        			 	 
	                   	 $("#pw1").addClass("success");
	                   	 $("#pw2").addClass("success");	
        			}else{
        				 $("#pw1").addClass("fail");
	                   	 $("#pw2").addClass("fail");
        			}
        		}else{
        			$("#pw1").addClass("fail");
                  	$("#pw2").addClass("fail");
        		}
        		//location.reload();
        		/* 
                 if($("#pw1").val().length==$("#pw2").val().length){
                	 
                	 $("#pw1").removeClass("fail");
                	 $("#pw2").removeClass("fail");
                	 $("#pw1").removeClass("success");
                	 $("#pw2").removeClass("success").addClass("success");
                	 $("#pw1").addClass("success");
                	 $("#pw2").addClass("success");
                 }else{
                	 $("#pw1").removeClass("success");
                	 $("#pw2").removeClass("success");
                	 $("#pw1").removeClass("fail");
                	 $("#pw2").removeClass("fail");
                	 $("#pw1").addClass("fail");
                	 $("#pw2").addClass("fail");
                 } */
             });
        	 
        	 $("#vcode").on("blur",function(){
                 if($("#vcode").val().length==$("#pw2").val().length){
                	 $("#vcode").removeClass("fail");
                	 $("#vcode").removeClass("fail");
                	 $("#vcode").addClass("success");
                	 $("#vcode").addClass("success");
                 }else{
                	 $("#vcode").removeClass("success");
                	 $("#vcode").removeClass("success");
                	 $("#vcode").addClass("fail");
                	 $("#pw2").addClass("fail");
                 }
             }); 
             
        	 //ȸ������ ��ư ������
        	 $("#signUpBtn").click(function(){
				var canJoin = "true";	        		 
        		 if($("#idtf").hasClass("fail")==true || $("#idtf").hasClass("fail")==null){
        			 canJoin = null;
        			 $("#idtf").focus();        			 
        		 }
        		 if($("#pw1").hasClass("fail")==true || $("#pw1").hasClass("fail")==null){
        			 canJoin = null;
        			 $("#pw1").focus();        			 
        		 }
        		 if($("#pw2").hasClass("fail")==true || $("#pw2").hasClass("fail")==null){
        			 canJoin = null;
        			 $("#pw2").focus();        			 
        		 }
        		 if($("#nick").hasClass("fail")==true || $("#nick").hasClass("fail")==null){
        			 canJoin = null;
        			 $("#nick").focus();        			 
        		 }
        		 if($("#email").hasClass("fail")==true || $("#email").hasClass("fail")==null){
        			 canJoin = null;
        			 $("#email").focus();        			 
        		 }
        		 if($("#vcode").hasClass("fail")==true || $("#vcode").hasClass("fail")==null){
        			 canJoin = null;
        			 $("#vcode").focus();        			 
        		 }        		 
        		 if(canJoin =="true"){
        			 if($("#vcode").val() == $("#orgcode1").val()){
        			 	$("#signup-form").submit();
        			 }else{
        				 $("#vcode").removeClass("fail");
        				 $("#vcode").addClass("fail");
        				 $("#vcode").addClass("focus");
        				 $("#vcode").focus();
        			 }
        		 }
        		 //$("#signup-form").submit();
        		 
        	 });
        	 
        	 //�ΰ� Ŭ��
        	 $("#logo").click(function(){
         		location.href="Main.do";
         	});    
        });
        
    </script>
</body>
</html>