<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%> <!-- dddj -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
       .bottom-text a{
        	color: black;
        }
        .bottom-text2 a{
        	color: black;
        }
/*pwã��*/
        #mailBtn{
            color: dodgerblue;
        }
        #findPW-form{
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

        #findPW-form h1{
            text-align: center;
            margin-bottom: 60px;
        }
        #findPW-form h4{
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
        #sendMail{
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
	boolean isEmail = false;	
	try{
		isEmail = (boolean)request.getAttribute("ck");
		if(isEmail==true){//�̸����� �����ϸ�
			String userEmail = (String)request.getAttribute("userEmail");
			System.out.println("����userEmail : "+ (String)request.getAttribute("userEmail"));
			session.setAttribute("userEmail2", userEmail);
			String attk = (String)request.getAttribute("attk");
			session.setAttribute("attk", attk);
			String userId = (String)request.getAttribute("userId");
			session.setAttribute("userId2", userId);
			System.out.println("userId : "+ (String)session.getAttribute("userId2"));
		}else{
			session.setAttribute("userEmail2", "nothing");
		}
	}catch(NullPointerException e){
		isEmail = false;
	}
	
	boolean isAttk = false;	
	try{
		isAttk = (boolean)request.getAttribute("confirePass");
		if(isAttk==true){//�����Ǿ�����
			System.out.println("����Ű�����Ǿ���");
		
			String userAttk = (String)request.getAttribute("userAttk");
			System.out.println("userAttk : "+userAttk);
			session.setAttribute("userAttk", userAttk);			
		}else{
			session.setAttribute("userAttk", "nothing");
		}
	}catch(NullPointerException e){
		isAttk = false;
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
        <form id="findPW-form" action="UpdateInfo.do" method="post">
            <h1>�̸��� �ּҷ� ��й�ȣ ã��</h1>
            <h4>������ �� ����� ���� �ּҸ� �Է��ϰ� &nbsp;<span id="mailBtn">"���� �߼�"</span>&nbsp; &nbsp;&nbsp; ��ư�� Ŭ�����ּ���.</h4>            
                <div class="txts">       
                    <input type="email" id="emailT" value ="<%=session.getAttribute("userEmail2")%>">
                    <%System.out.println("userEmail : "+session.getAttribute("userEmail2")); %>
                    <span data-placeholder="�̸��� �ּ�"></span>                   
                   <input type="button" value="���� �߼�" id="sendMail" class="emailC"> 
                </div>
                <div class="txts">
                   <input type="text" id="vcode" value ="<%=session.getAttribute("userAttk")%>">
                   
                   <span data-placeholder="���� ��ȣ"></span>                   
                   <input type="button" value="���� �ϱ�" id="confire">
                   
                </div>
                <div class="txts">
                    <input type="text" id="signupId" name="id">
                    <span data-placeholder="���̵�"></span>                    
                </div>            
                <div class="txts">
                    <input type="password" id="signupPw" name="pw">
                    <span data-placeholder="��� ��ȣ"></span>                
                </div>
                <div class="txts">
                    <input type="password" id="signupCPw">
                    <span data-placeholder="��� ��ȣ Ȯ��"></span>                
                </div>
                <input type="button" class="signupbtn" value="���� �ϱ�" id="update">
                <div class="bottom-text2">
                    <a href="Main.do">�������� ����</a>    &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;       
                    <a href="FindId.do">���̵� ã��</a>        
                </div>
            </form> 
            <input type="hidden" id="orgcode" value ="<%=session.getAttribute("attk")%>">
             <input type="hidden" id="userId" value ="<%=session.getAttribute("userId2")%>">
        </main>
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
    
    <div id="loginWrap">
            <div id="loginBack">
            </div>
            <form action="loginpage.do" id="login-form" method="post">
                <h1>�α���</h1>
                <div class="txtb">
                    <input type="text" id="logId" name="id">
                    <span data-placeholder="���̵�"></span>
                </div>

                <div class="txtb">
                    <input type="password" id="logPw" name="pw">
                    <span data-placeholder="��� ��ȣ"></span>
                </div>

                <input type="submit" id="goLogin" class="logbtn" value="Login">
                <div class="bottom-text">
                    <a href="SignUp.do">ȸ������ �ϱ�</a>                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;  &nbsp; &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;       
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
            
            /*��й�ȣ ã��*/
            $(".txts input").on("focus",function(){
               $(this).addClass("focus");          
            });

            $(".txts input").on("blur",function(){
                if($(this).val()==""){
                	$(this).removeClass("focus");
                }
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
        	
        	
        	//�̸��� �κ�
        	if($("#emailT").val()!="null" && $("#emailT").val()!='nothing'){
        		$("#emailT").addClass("success");
        		$("#emailT").addClass("focus");
        	}else if($("#emailT").val()=='nothing'){
        		$("#emailT").val('�̹� ��ϵ� �̸������ֽ��ϴ�.');
        		$("#emailT").focus();
        		$("#emailT").addClass("fail");
        		$("#emailT").addClass("focus");
        	}else{
        		$("#emailT").val('');
        	}
        	
        	//�����ڵ� �κ�
        	if($("#vcode").val()!="null" && $("#vcode").val()!='nothing'){
        		$("#vcode").addClass("success");
        		$("#vcode").addClass("focus");
        		
        	}else if($("#vcode").val()=='nothing'){
        		$("#vcode").val('�߸� �Է��ϼ̽��ϴ�.');
        		$("#vcode").focus();
        		$("#vcode").addClass("fail");
        		$("#vcode").addClass("focus");        		
        	}else{
        		$("#vcode").val('');
        	}
        	
        	//���� �߼�
            $("#sendMail").click(function(){
            	var tempEmail = $("#emailT").val();
            	//alert(tempEmail);
           		if(tempEmail!="null" && tempEmail !='nothing'){
           			 location.href="EmailConfire.do?email="+tempEmail;
            	}          
           });
        	
        	 //���� ��ư
            $("#confire").click(function(){
            	var temp = $("#attk").val();
            	if(temp != "null" && temp!='nothing'){	
            		location.href="FindPw_ConfireNum.do?confireNum="+$("#vcode").val()+"&confireNum2="+$("#orgcode").val()+"&email="+$("#emailT").val();            		
            	}else{
            		alert("������ȣ�� �Է��ϼ���");
            	}
            });  
        	 
            //�����ϱ� ��ư
            $("#update").click(function(){
           	
           	  var id = $("#signupId").val();
           	 var receiveId = $("#userId").val();
           	 var id = $("#signupId").val();
           	 var pw1 =  $("#signupPw").val();
            	 var pw2 =  $("#signupCPw").val();
            	 var canJoin = "true";	        		 
	       		 if($("#emailT").hasClass("fail")==true || $("#emailT").hasClass("fail")==null){
	       			 canJoin = null;
	       			 $("#emailT").focus();        			 
	       		 }
	       		 if($("#vcode").hasClass("fail")==true || $("#vcode").hasClass("fail")==null){
	       			 canJoin = null;
	       			 $("#vcode").focus();        			 
	       		 }
	       		 if(receiveId != id){
	       			 canJoin = null;
	       			$("#signupId").focus();
	       			$("#signupId").addClass("fail");
	       			$("#signupId").addClass("focus");
	       		 }
	       		 if(pw1!=pw2 || pw2=="" || pw1==""){
	       			 canJoin = null;
	       			$("#signupPw").addClass("fail");
	       			$("#signupCPw").focus();
	       			$("#signupCPw").addClass("fail");
	       			$("#signupCPw").addClass("focus");	       			
	       		 }
	       		 if(canJoin == "true"){
	       			$("#findPW-form").submit();
	       		 }
           }); 
           
          //�ΰ� Ŭ��
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