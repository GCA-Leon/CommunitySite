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
         #headL a:VISITED{ /* 수정 */        
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
        
         /* 푸터 부분 */
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
        
        /* 사이드바 */
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
        /* 2020.04.21 지원홍 */
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
        /* 2020.04.21 지원홍 */
        /*로그인창*/
        /*로그인창*/
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
        
        
/*회원가입폼*/
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
        .sidemenut a{
        	color:black;
        }
        .sidemenut a:VISITED{
        	color:black;
        }
		.sidemenuc a{
        	color:black;
		}
        .sidemenuc a:VISITED{
        	color:black;
		}
        /*반응형*/
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
        @media(max-width:1080px){/*기타*/
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
        @media(max-width:1000px){/*놀이터*/
            #b6{
                display: none;
            }
        }
        @media(max-width:910px){/*게임판*/
            #b5{
                display: none;
            }
            
        }
        @media(max-width:810px){/*커뮤니티*/
            #b4{
                display: none;
            }
           
        }
        @media(max-width:710px){/*읽을거리판*/
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
                        <div id="b1"><a href="BoardSearchAction.do?boardname=board_best&sc=null&keyword=null&pages=1&function=null&function=null">베스트</a></div>
                        <div class="menubo">
                            <div id="menu1" class="menu">
                               <a href="#">베스트</a>
                               <a href="#">베스트 인기글</a>
                            </div>
                        </div>
                    </li>
                     <li id="i2">
                        <div id="b2"><a href="BoardSearchAction.do?boardname=board_normal&sc=null&keyword=null&pages=1&function=null&function=null">유머 게시판</a> </div>
                        <div class="menubo">
                            <div id="menu2" class="menu">
                               <a href="#">유머 게시판</a>
                               <a href="#">비추천 베스트</a>
                            </div>
                        </div>
                    </li>
                    <li id="i3">
                        <div id="b3"><a href="BoardSearchAction.do?boardname=board_read&sc=null&keyword=null&pages=1&function=null&function=null">읽을 거리 판</a></div>
                        <div class="menubo">
                            <div id="menu3" class="menu">
                                <a href="#">전체글 보기</a>
                                <a href="#">인기글</a>
                                <a href="#">기묘한 이야기</a>
                                <a href="#">호러 괴담</a>
                                <a href="#">감동</a>
                                <a href="#">자연</a>
                                <a href="#">유머</a>
                                <a href="#">과학</a>
                                <a href="#">역사</a>
                                <a href="#">기타 지식</a>
                            </div>
                        </div>
                    </li>
                    <li id="i4">
                        <div id="b4"><a href="BoardSearchAction.do?boardname=board_read&sc=null&keyword=null&pages=1&function=null&function=null">커뮤니티</a></div>
                        <div class="menubo">
                            <div id="menu4" class="menu">
                                <a href="#">탈것 판</a>
                                <a href="#">익명 판</a>
                                <a href="#">컴퓨터 / IT 판</a>
                                <a href="#">영상 판</a>
                                <a href="#">고민 상담 판</a>
                                <a href="#">스포츠 판</a>
                                <a href="#">요리 판</a>
                                <a href="#">덕후 판</a>
                                <a href="#">창작 판</a>
                                <a href="#">음악 판</a>
                                <a href="#">정치 사회 판</a>
                                <a href="#">젠더 이슈 판</a>
                            </div>
                        </div>
                    </li>
                    <li id="i5">
                        <div id="b5"><a href="BoardSearchAction.do?boardname=board_read&sc=null&keyword=null&pages=1&function=null&function=null">게임 판</a></div>
                        <div class="menubo">
                            <div id="menu5" class="menu">
                                <a href="#">LOL</a>
                                <a href="#">게임 연재 / 정보 판</a>
                                <a href="#">게임 판</a>
                                <a href="#">콘솔 게임 판</a>
                                <a href="#">모바일 게임 판</a>
                                <a href="#">로스트아크</a>
                                <a href="#">던전 앤 파이터</a>
                            </div>
                        </div>
                    </li>
                    <li id="i6">
                        <div id="b6"><a href="BoardSearchAction.do?boardname=board_read&sc=null&keyword=null&pages=1&function=null&function=null">기타</a></div>
                        <div class="menubo">
                            <div id="menu6" class="menu">
                                <a href="#">이모티콘</a>
                                <a href="#">걸그룹 판</a>
                                <a href="#">짤방 판</a>
                                <a href="#">플래시 게임</a>
                            </div>
                        </div>
                    </li>
                    <li id="i7">
                        <div id="b7"><a href="BoardSearchAction.do?boardname=board_read&sc=null&keyword=null&pages=1&function=null&function=null">공지</a></div>
                        <div class="menubo">
                            <div id="menu7" class="menu">
                                <a href="#">공지사항</a>
                                <a href="#">건의 신고 판</a>
                            </div>
                        </div>
                    </li>
                </ul>               
                <div id="headR">
                   
                    <i class="fas fa-random" id="random"></i>
                    <!-- 로그인버튼 -->
                    <%
						try{
							boolean loginck = (boolean)session.getAttribute("loginck");
							if(loginck != true){%>
								<input type="button" id="loginBtn" value="로그인">
						<%} else if(loginck == true) {
								String loginUserNickname = (String)session.getAttribute("loginUserNickname");%>		
								<input type="button" id="logoutBtn" value="로그아웃">
						<%} 
						} catch(NullPointerException e) {%>
							<input type="button" id="loginBtn" value="로그인">
						<%}						
					%>
                </div>
            </div>  
        </header>
        
        <main> 
           <form id="signup-form" action="join.do" method="post">
            <h1>회원가입</h1>            
                <div class="txts">
                    <input type="text" id="idtf" name="id"  value="" >
                    <span data-placeholder="아이디"></span>                    
                    <input type="button" value="중복확인" id="confire" class="idC">
                    <%-- <% System.out.println("userId="+session.getAttribute("userId"));%> --%>
                </div>
            <div class="txts">
                <input type="password" id="pw1" name="pw" value="">
                <span data-placeholder="비밀 번호"></span>          
               <%--  <%System.out.println("pw1 : "+session.getAttribute("pw1")); %>   --%>    
            </div>
            
            <div class="txts">
                <input type="password" id="pw2" name="pwck" value="">
                <span data-placeholder="비밀 번호 확인"></span>
               <%--  <%System.out.println("pw2 : "+session.getAttribute("pw2")); %> --%>
            </div>
            
            <div class="txts">
                <input type="text" id="nick" name="nick" value="">
                <span data-placeholder="닉네임"></span>                
                <input type="button" value="중복확인" id="confire" class="nickC">
            </div>
            
            <div class="txts">
                <input type="text" id="email" name="email" value="">
                <span data-placeholder="이메일"></span>               
                <input type="button" value="인증요청" id="confire" class="emailC">
            </div>
            
            <div class="txts">
                  <input type="text" id="vcode" name="vcode" value="">
                  <span data-placeholder="인증번호"></span>
                  <input type="button" value="번호확인" id="confire" class="codeC">
             </div>

                <input type="button" id= "signUpBtn" class="signupbtn" value="가입하기">
                <div class="bottom-text2">
                <a href="Main.do">메인으로 가기</a>   &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;       
                    <a href="FindId.do">ID/PW 찾기</a>        
                </div>
            </form> 
        </main>
        <input type="hidden" id="orgcode1" name="vcode" value="<%= session.getAttribute("orgcode1") %>">
 <footer>
        <div id="footme">
            <a href="https://www.dogdrip.net/dogdrip">개드립</a>
            <a href="https://www.dogdrip.net/userdog">유저 개드립</a>
            <a href="https://www.dogdrip.net/doc">읽을 거리 판</a>
            <a href="https://www.dogdrip.net/communitypage">커뮤니티</a>
            <a href="https://www.dogdrip.net/game">게임 판</a>
            <a href="https://www.dogdrip.net/pic">놀이터</a>
            <a href="https://www.dogdrip.net/notice">기타</a>
        </div>
        <br><br>
        Copyright (c) DogDrip.net All Right Reserved.<br>
        <br>
        Contact us, dogdripper at gmail dot com<br><br>
        <div id="footetc">
         <a href="https://www.dogdrip.net/policy">이용약관</a> 
         <a href="https://www.dogdrip.net/privacy">개인정보취급방침</a>
         </div>
         <br><br><br>
    </footer>
 <sidebar>
        <div id="side">
        <!-- 2020.04.21 지원홍  -->
            <%try{
            	boolean loginck = (boolean)session.getAttribute("loginck");
            	if(loginck != true){ 
           	%>
           	     <div id="sidemypage" onclick="loginfun()">
           		 <i class="fas fa-user-circle fa-3x"></i>
           		 <div>로그인 및 회원가입</div>
           		 <div>회원가입하세요!</div>
          
           	<%
            	} else if(loginck == true){
            		/* 로그인이 되었다면 세션에 저장된 id와 nickname을 가져와서 변수에 담음 */
            		String loginUserId = (String)session.getAttribute("loginUserId");
            		String loginUserNick = (String)session.getAttribute("loginUserNickname");
            %>
            	<div id="sidemypage">
           		<i class="fas fa-user-circle fa-3x"></i>
            	<div><%=(String)session.getAttribute("loginUserNickname")%>님 안녕하세요</div> <!-- nickname을 표시해야 하는데 자꾸 null 떠서 임시로 id를 표시함  -->
            	<form name="mypageform">
            		<input id="myPageBtn" type="button" value="My Page" onclick="mypagefun()">
              	</form>
            <%
            	}
            } catch(NullPointerException e){
            %>
            	<div id="sidemypage" onclick="loginfun()">
           		<i class="fas fa-user-circle fa-3x"></i>
            	<div>로그인 및 회원가입</div>
           		<div>회원가입하세요!</div>
            <%
            }
            %>

        </div>
        <div id="sidemenu">
            <div class="sidemenus">
                <div class="sidemenut"><a href="BoardSearchAction.do?boardname=board_best&sc=null&keyword=null&pages=1&function=null">베스트</a></div>
                <div class="sidemenuc"><a href="BoardSearchAction.do?boardname=board_best&sc=null&keyword=null&pages=1&function=null">베스트</a></div>
                <div class="sidemenuc"><a href="BoardSearchAction.do?boardname=board_best&sc=null&keyword=null&pages=1&function=null">베스트 인기글</a></div>
            </div>
            <div class="sidemenus">
                <div class="sidemenut"><a href="BoardSearchAction.do?boardname=board_normal&sc=null&keyword=null&pages=1&function=null">유머 게시판</a></div>
                <div class="sidemenuc"><a href="BoardSearchAction.do?boardname=board_normal&sc=null&keyword=null&pages=1&function=null">유머 게시판</a></div>
                <div class="sidemenuc"><a href="BoardSearchAction.do?boardname=board_normal&sc=null&keyword=null&pages=1&function=null">붐업 베스트</a></div>
            </div>
            <div class="sidemenus">
                <div class="sidemenut"><a href="BoardSearchAction.do?boardname=board_read&sc=null&keyword=null&pages=1&function=null">읽을 거리 판</a></div>
                <div class="sidemenuc"><a href="BoardSearchAction.do?boardname=board_read&sc=null&keyword=null&pages=1&function=null">전체 글 보기</a></div>
                <div class="sidemenuc"><a href="BoardSearchAction.do?boardname=board_read&sc=null&keyword=null&pages=1&function=null">인기글</a></div>
                <div class="sidemenuc"><a href="BoardSearchAction.do?boardname=board_read&sc=null&keyword=null&pages=1&function=null">기묘한 이야기</a></div>
                <div class="sidemenuc"><a href="BoardSearchAction.do?boardname=board_read&sc=null&keyword=null&pages=1&function=null">호러 괴담</a></div>
                <div class="sidemenuc"><a href="BoardSearchAction.do?boardname=board_read&sc=null&keyword=null&pages=1&function=null">감동</a></div>
                <div class="sidemenuc"><a href="BoardSearchAction.do?boardname=board_read&sc=null&keyword=null&pages=1&function=null">자연</a></div>
                <div class="sidemenuc"><a href="BoardSearchAction.do?boardname=board_read&sc=null&keyword=null&pages=1&function=null">유머</a></div>
                <div class="sidemenuc"><a href="BoardSearchAction.do?boardname=board_read&sc=null&keyword=null&pages=1&function=null">과학</a></div>
                <div class="sidemenuc"><a href="BoardSearchAction.do?boardname=board_read&sc=null&keyword=null&pages=1&function=null">역사</a></div>
                <div class="sidemenuc"><a href="BoardSearchAction.do?boardname=board_read&sc=null&keyword=null&pages=1&function=null">기타 지식</a></div>
            </div>
            <div class="sidemenus">
                <div class="sidemenut"><a href="BoardSearchAction.do?boardname=board_community&sc=null&keyword=null&pages=1&function=null">커뮤니티</a></div>
                <div class="sidemenuc"><a href="BoardSearchAction.do?boardname=board_community&sc=null&keyword=null&pages=1&function=null">탈것 판</a></div>
                <div class="sidemenuc"><a href="BoardSearchAction.do?boardname=board_community&sc=null&keyword=null&pages=1&function=null">익명 판</a></div>
                <div class="sidemenuc"><a href="BoardSearchAction.do?boardname=board_community&sc=null&keyword=null&pages=1&function=null">컴퓨터 / IT 판</a></div>
                <div class="sidemenuc"><a href="BoardSearchAction.do?boardname=board_community&sc=null&keyword=null&pages=1&function=null">영상 판</a></div>
                <div class="sidemenuc"><a href="BoardSearchAction.do?boardname=board_community&sc=null&keyword=null&pages=1&function=null">고민 상담 판</a></div>
                <div class="sidemenuc"><a href="BoardSearchAction.do?boardname=board_community&sc=null&keyword=null&pages=1&function=null">스포츠 판</a></div>
                <div class="sidemenuc"><a href="BoardSearchAction.do?boardname=board_community&sc=null&keyword=null&pages=1&function=null">요리 판</a></div>
                <div class="sidemenuc"><a href="BoardSearchAction.do?boardname=board_community&sc=null&keyword=null&pages=1&function=null">덕후 판</a></div>
                <div class="sidemenuc"><a href="BoardSearchAction.do?boardname=board_community&sc=null&keyword=null&pages=1&function=null">창작 판</a></div>
                <div class="sidemenuc"><a href="BoardSearchAction.do?boardname=board_community&sc=null&keyword=null&pages=1&function=null">음악 판</a></div>
                <div class="sidemenuc"><a href="BoardSearchAction.do?boardname=board_community&sc=null&keyword=null&pages=1&function=null">정치 사회 판</a></div>
                <div class="sidemenuc"><a href="BoardSearchAction.do?boardname=board_community&sc=null&keyword=null&pages=1&function=null">젠더 이슈 판</a></div>
            </div>
             <div class="sidemenus">
                <div class="sidemenut"><a href="BoardSearchAction.do?boardname=board_game&sc=null&keyword=null&pages=1&function=null">게임 판</a></div>
                <div class="sidemenuc"><a href="BoardSearchAction.do?boardname=board_game&sc=null&keyword=null&pages=1&function=null">LOL</a></div>
                <div class="sidemenuc"><a href="BoardSearchAction.do?boardname=board_game&sc=null&keyword=null&pages=1&function=null">게임 연재 / 정보 판</a></div>
                <div class="sidemenuc"><a href="BoardSearchAction.do?boardname=board_game&sc=null&keyword=null&pages=1&function=null">게임 판</a></div>
                <div class="sidemenuc"><a href="BoardSearchAction.do?boardname=board_game&sc=null&keyword=null&pages=1&function=null">콘솔 게임 판</a></div>
                <div class="sidemenuc"><a href="BoardSearchAction.do?boardname=board_game&sc=null&keyword=null&pages=1&function=null">모바일 게임 판</a></div>
                <div class="sidemenuc"><a href="BoardSearchAction.do?boardname=board_game&sc=null&keyword=null&pages=1&function=null">로스트아크</a></div>
                <div class="sidemenuc"><a href="BoardSearchAction.do?boardname=board_game&sc=null&keyword=null&pages=1&function=null">던전 앤 파이터</a></div>
            </div>
             <div class="sidemenus">
                <div class="sidemenut"><a href="BoardSearchAction.do?boardname=board_etc&sc=null&keyword=null&pages=1&function=null">기타</a></div>
                <div class="sidemenuc"><a href="BoardSearchAction.do?boardname=board_etc&sc=null&keyword=null&pages=1&function=null">개드립콘</a></div>
                <div class="sidemenuc"><a href="BoardSearchAction.do?boardname=board_etc&sc=null&keyword=null&pages=1&function=null">걸그룹 판</a></div>
                <div class="sidemenuc"><a href="BoardSearchAction.do?boardname=board_etc&sc=null&keyword=null&pages=1&function=null">짤방 판</a></div>
                <div class="sidemenuc"><a href="BoardSearchAction.do?boardname=board_etc&sc=null&keyword=null&pages=1&function=null">플래시 게임</a></div>
            </div>
             <div class="sidemenus">
                <div class="sidemenut"><a href="BoardSearchAction.do?boardname=board_notice&sc=null&keyword=null&pages=1&function=null">공지</a></div>
                <div class="sidemenuc"><a href="BoardSearchAction.do?boardname=board_notice&sc=null&keyword=null&pages=1&function=null">공지사항</a></div>
                <div class="sidemenuc"><a href="BoardSearchAction.do?boardname=board_notice&sc=null&keyword=null&pages=1&function=null">건의 신고 판</a></div>
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
                <h1>로그인</h1>
                <div class="txtb">
                    <input type="text" id="logId" name="id">
                    <span data-placeholder="아이디"></span>
                </div>

                <div class="txtb">
                    <input type="password" id="logPw" name="pw">
                    <span data-placeholder="비밀 번호"></span>
                </div>

                <input type="button" id="goLogin" class="logbtn" value="Login">
                <div class="bottom-text">
                    <a href="SignUp.do">회원가입 하기</a>  
                     &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;  &nbsp; &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;       
                    <a href="FindId.do">ID/PW 찾기</a>        
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
            
            /*로그인버튼*/
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
            
            /*랜덤버튼*/
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
                 location.href="Random.do";
            });
            
           /*로그인화면 */
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
            
            /*회원가입*/
            $(".txts input").on("focus",function(){
                $(this).addClass("focus");          
            });
            $(".txts input").on("blur",function(){
                if($(this).val()=="")
                $(this).removeClass("focus");
            });
            
            /* 로그인버튼 */    
        	$("#goLogin").click(function(){
        		var id = $("#logId").val();
        		var pw = $("#logPw").val();
        		//alert("id: "+id+",pw: "+pw);
        		if(id!="" && pw!="" ){
        			$("#login-form").submit();
        		}else{
        			alert("아이디 혹은 비밀번호가 입력되지 않았습니다.");
        		}        		
        	});
        	$("#logoutBtn").click(function(){
        		location.href="goLogout.do";
        	});
        	
        	$(".idC").click(function(){
        		var id = $("#idtf").val();   
        		var pw1 = $("#pw1").val();
        		var pw2 = $("#pw2").val();
        		if(id != ""){ // id 체크 페이지 이동        			
        			if(id.length > 12){ // id 길이 제한
        				alert("아이디는 12글자까지 가능합니다.");
        			} else {        				
        				//location.href="signUP2.do?id="+id+"&num=1"+"&pw1="+pw1+"&pw2="+pw2;
        				$.ajax({
               				url: "Update.jsp",
               				type: "post",
               				dataType: "json",
               				data: {
               					   action : "SignUp_Confire_Id",
               					   id : $("#idtf").val()
               					   },      	
               				success: function(data){
               					 if(data.result){
               						 alert("사용 가능한 아이디 입니다.");
               						 $("#idtf").removeClass("fail");
               						 $("#idtf").addClass("success");
               					}else{
               						alert("중복된 아이디 입니다.");
               						$("#idtf").removeClass("success");
               						$("#idtf").addClass("fail");
               					} 
               				},
               				complete: function(data){
               				},
               				error: function(request,status,error){
               					alert("signUP_id_ajex_fail");
               				}       						
                		});
        			}
        		}else{
        			alert("아이디를 입력해주세요");
        		}
        	});
        	//닉네임 중복 검사
        	$(".nickC").click(function(){ 
        		var nick = $("#nick").val();
        		if(nick !=""){
					//location.href="signUP2.do?nick="+nick+"&num=2"+"&pw1="+pw1+"&pw2="+pw2;
        			$.ajax({
           				url: "Update.jsp",
           				type: "post",
           				dataType: "json",
           				data: {
           					   action : "SignUp_Confire_Nick",
           					   nick : $("#nick").val()
           					   },      	
           				success: function(data){
           					 if(data.result){
           						 alert("사용 가능한 닉네임 입니다.");
           						 $("#nick").removeClass("fail");
           						 $("#nick").addClass("success");
           					}else{
           						alert("중복된 닉네임 입니다.");
           						$("#nick").removeClass("success");
           						$("#nick").addClass("fail");
           					} 
           				},
           				complete: function(data){
           				},
           				error: function(request,status,error){
           					alert("signUP_nick_ajex_fail");
           				}       						
            		});
				}else{
					alert("닉네임을 입력해주세요");
				}
        	});
        	$(".emailC").click(function(){
        		var email = $("#email").val();
        		// 정규식 패턴. 이메일 형식(x@x.x)이 아닐 경우 오류창 출력
    			var exptext = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;
    			if(exptext.test(email) == false){
    				alert("이메일 형식이 올바르지 않습니다.");
    			} else {
    				if(email !=""){
    					//location.href="signUP2.do?email="+email+"&num=3"+"&pw1="+pw1+"&pw2="+pw2;
    					$.ajax({
               				url: "Update.jsp",
               				type: "post",
               				dataType: "json",
               				data: {
               					   action : "SignUp_Confire_Email",
               					   email : $("#email").val()
               					   },      	
               				success: function(data){
               					 if(data.result){
               						 alert("인증 번호를 보냈습니다.");
               						 $("#email").removeClass("fail");
               						 $("#email").addClass("success");
               						 $("#orgcode1").val(data.code);
               					}else{
               						alert("중복된 이메일 입니다.");
               						$("#email").removeClass("success");
               						$("#email").addClass("fail");
               					} 
               				},
               				complete: function(data){
               				},
               				error: function(request,status,error){
               					alert("signUP_email_ajex_fail");
               				}       						
                		});
    				}
    			}
        	});
        	
        	$(".codeC").click(function(){
        		var code = $("#vcode").val();
        		var orgcode = $("#orgcode1").val();
        		if(code !=""){
        			//location.href="signUP2.do?code="+code+"&orgCode="+$("#orgcode1").val()+"&num=4"+"&pw1="+pw1+"&pw2="+pw2;
        			if(orgcode != "null"){
	        			$.ajax({
	           				url: "Update.jsp",
	           				type: "post",
	           				dataType: "json",
	           				data: {
	           					   action : "SignUp_Confire_Code",
	           					   code : $("#vcode").val(),
	           					   orgcode : $("#orgcode1").val()
	           					   },      	
	           				success: function(data){
	           					 if(data.result){
	           						 alert("이메일 인증을 성공 하셨습니다.");
	           						 $("#vcode").removeClass("fail");
	           						 $("#vcode").addClass("success");           						 
	           					}else{
	           						alert("인증 번호가 다릅니다. 다시 시도 해주세요.");
	           						$("#vcode").removeClass("success");
	           						$("#vcode").addClass("fail");
	           					} 
	           				},
	           				complete: function(data){
	           				},
	           				error: function(request,status,error){
	           					alert("signUP_code_ajex_fail");
	           				}
            			});
        			}else{
    					alert("이메일 인증번호를 먼저 요청해 주세요.");
    				}
        		}else{
        			alert("인증번호를 입력해주세요");
        		}
        	});
        	//아이디 부분
        	if($("#idtf").val()!="null" && $("#idtf").val()!=""){
        		$("#idtf").addClass("success");
        		$("#idtf").addClass("focus");
        	}else{
        		$("#idtf").removeClass("success");
        		$("#idtf").removeClass("focus");
        	}
        	
        	//1번째 비밀번호 부분
        	if($("#pw1").val()!="null" && $("#pw1").val()!="" ){
        		$("#pw1").addClass("success");
        		$("#pw1").addClass("focus");
        		$("#pw2").addClass("success");
        		$("#pw2").addClass("focus");
        	}else{
        		$("#pw1").removeClass("success");
        		$("#pw1").removeClass("focus");
        		$("#pw2").removeClass("success");
        		$("#pw2").removeClass("focus");
        	}
        	
        	        	
        	//닉네임 부분
        	if($("#nick").val()!="null" && $("#nick").val()!=""){
        		$("#nick").addClass("success");
        		$("#nick").addClass("focus");
        	}else{
        		$("#nick").removeClass("success");
        		$("#nick").removeClass("focus");
        	}
        	//이메일 부분
        	if($("#email").val()!="null" && $("#email").val()!=""){
        		$("#email").addClass("success");
        		$("#email").addClass("focus");
        	}else{
        		$("#email").removeClass("success");
        		$("#email").removeClass("focus");
        	}
        	//인증코드 부분
        	if($("#vcode").val()!="null" && $("#vcode").val()!=""){
        		$("#vcode").addClass("success");
        		$("#vcode").addClass("focus");
        		
        	}else{
        		$("#vcode").removeClass("success");
        		$("#vocde").removeClass("focus");
        	}
        	
  		//비밀번호 포커스 땠을때    
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
        		}
             }); 
        	
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
        		}
             }); 
             
        	 //회원가입 버튼 누르기
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
        			 $.ajax({
	           				url: "Update.jsp",
	           				type: "post",
	           				dataType: "json",
	           				data: {
	           					   action : "SignUp_Join",
	           					   id : $("#idtf").val(),
	           					   pw : $("#pw1").val(),
	           					   email : $("#email").val(),
	           					   nick : $("#nick").val()
	           					   },      	
	           				success: function(data){
	           					 if(data.result){
	           						 alert("회원가입을 성공 하셨습니다.");


	           					}else{
	           						alert("회원가입에 실패했습니다. 다시 시도 해주세요.");
	           						$("#idtf").removeClass("success");
	           						$("#pw1").removeClass("success");
	           						$("#pw2").removeClass("success");
	           						$("#nick").removeClass("success");
	           						$("#vcode").removeClass("success");
	           						$("#email").removeClass("success");
	           					} 
	           				},
	           				complete: function(data){
	           				},
	           				error: function(request,status,error){
	           					alert("signUP_join_ajex_fail");
	           				}
         			});
        		 }
        		 //$("#signup-form").submit();
        		 
        	 });
        	 
        	 //로고 클릭
        	 $("#logo").click(function(){
         		location.href="Main.do";
         	});    
        });
        /* 클릭 시 로그인 화면이 fadeIn으로 나타나면서 sidebar는 사라짐 */
        function loginfun(){
            $("#loginWrap").css("z-index", 100);
            $("sidebar").css("display", "none");
            $("#loginWrap").fadeIn(); 
           /*  수정 */
		}
        
        /* 마이페이지 버튼을 누르면 이동 */
        function mypagefun(){
			location.href="MyPage.do";
        }
    </script>
</body>
</html>