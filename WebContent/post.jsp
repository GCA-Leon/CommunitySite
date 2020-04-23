<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ page import="java.util.*, mypack.*, yjpack.*" %>
<!DOCTYPE html>
<html lang="ko">
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
        #headL a:VISITED{ /* 수정 */
        
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
        
        #headR{
            display: flex;
            color: snow;
            
            right: -20px;
            
        }
        #loginBtn ,#logoutBtn{
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
            vertical-align: bottom;
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
        td>span{
           margin-left: 20px;
            color: deepskyblue;
        }
        
       td>a{
       color:black;
       }
       td>a:VISITED{
       color:gainsboro;
       }
        /*table{ 수정
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
        }*/
        
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
        /*메인 부분*/
        .boardname{
            font-size: 25px;
            font-weight: 1000;
            color: deepskyblue;
            
        }
        #boardsearchcontents{
        margin-top: 30px;
        margin-left: 670px;
        }
        #boardkeyword{
        
        	font-size: 20px;
        
        }
        
        .boardname:visited{
        	color:deepskyblue;
        }
        #boardsearch{
            cursor: pointer;
        }
        #boardtable{
            margin-top: 10px;
            width: 1050px;
            border-collapse: collapse;
        }
        .boardtr{
           text-align: left;
            font-size: 15px;
            font-weight: 100;
            color: black;
            border-bottom: 1px solid lightgray;
            padding-bottom: 10px;
        }
        .boardtd{
            padding-top: 5px;
            padding-bottom: 5px;
            padding-left: 20px;
        }
        .boardtr:nth-child(1){
            border-top: 1px solid lightgray;
            text-align: center;
            font-weight: 1000;
        }
        .boardtd:nth-child(1){width: 50px;text-align: center;}
        .boardtd:nth-child(2){width: 600px;}
        .boardtd:nth-child(3){width: 150px;}
        .boardtd:nth-child(4){width: 80px;text-align: center;}
        .boardtd:nth-child(5){width: 100px;text-align: center;}
        #writetr{
        position:  absolute;
        display: flex;
        width:100%;
        padding: 10px;
        }
        #write{
        	border: 0;
        	outline: 0;
   			width:100px;
   			height:30px;
   			border-radius: 15px;
   			cursor: pointer;
   			background-color: rgb(230,230,230);
        }
        #write:ACTIVE{
        	background-color: rgb(179, 198, 255);
        }
        #post{
            width: 100%;
            margin: 0 auto;
        }
        #post_title{
            font-size: 20px;
            padding: 5px;
            padding-bottom: 10px;
        }
        #post_info{
            border-top: 3px solid;
            background-color: gainsboro;
            padding: 5px;
            display: flex;
            justify-content: space-between
        }
        #post_info div{
            margin-right: 30px;
        }
        #post_info div{}
        #info_left{
            display: flex;
        }
        #post_contents{
            padding-top:100px; 
            padding-bottom:100px; 
        }
        #post_favorite{
            width: 320px;
            margin: 0 auto;
            display: flex;
        }
        #post_favorite input{
            width: 150px;
            margin: 10px;
            height: 50px;
            border-radius: 25px;
            border: 0;
            font-size: 30px;
            color: white;
            background-color: steelblue;
            cursor : pointer;
        }
        .post_comments{
        }
        .post_comments_top{
            background-color: gainsboro;
            padding: 5px;
            display: flex;
            justify-content: space-between
        }
        .post_comments_bottom{
            padding: 10px;
        }
        #post_favorite input:hover{
            background-color: dodgerblue;
        }
        
        
        
     #pagehrefs{
   	  		position:absolute;
        	display:flex;
        	width:300px;
        	margin-top:50px;
        	margin-left:400px;
        	border-radius:15px;
        	border-collapse: collapse;
        	background-color:rgb(230, 230, 230);
        	
        } 
        .pages{
        	padding-top:5px;
        	width:30px;
        	height:30px;
        	border-radius:15px;
        	text-align:center;
        	
        } 
        .pages:visited{
        	color: black;
        }
        
        .pages:HOVER{
        	background-color:rgb(179, 198, 255);
        	color: deepskyblue;
        }
         /* 푸터 부분 */
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
        #forpage{
        height: 100px;
        background-color: white;
        width:1080px;
        margin-left:-20px;
        }
        
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
        a:visited{
            color: gainsboro;
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
        @media(max-width:1100px){/*기타*/
            main{                
                width: 100%;
                margin-left: 0px; 
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
        @media(max-width:1020px){/*놀이터*/
            #b6{
                display: none;
            }
        }
        @media(max-width:930px){/*게임판*/
            #b5{
                display: none;
            }
            
        }
        @media(max-width:840px){/*커뮤니티*/
            #b4{
                display: none;
            }
           
        }
        @media(max-width:740px){/*읽을거리판*/
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
            }
            footer{
            }
        }
        
    </style>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		boolean isLogin= false;
		String userNickname = null;
	  	
		try{
			isLogin = (boolean)session.getAttribute("loginck"); //로그인이 되어잇다면
			if(isLogin==false){
				isLogin = (boolean)request.getAttribute("loginck");
				if(isLogin){
					session.setAttribute("loginck", isLogin);
					userNickname = (String)session.getAttribute("loginUserNickname");
					if(userNickname == null){
						userNickname = (String)request.getAttribute("loginUserNickname");
						//System.out.println("request userNick :" +request.getAttribute("loginUserNickname"));
						session.setAttribute("loginUserNickname", userNickname);
					}
					//userNickname = (String)request.getAttribute("loginUserNickname");
					//session.setAttribute("loginUserNickname", userNickname);
					System.out.println("nick:" +session.getAttribute("loginUserNickname"));
				}else{
					session.setAttribute("loginck", isLogin);
					session.removeAttribute("loginUserNickname");
					System.out.println("remove after nick:" +session.getAttribute("loginUserNickname"));
				}
			}else if(isLogin == true){
				session.setAttribute("loginck", isLogin);
				userNickname = (String)session.getAttribute("loginUserNickname");
				
				System.out.println("로그인 성공 후 nick:" +session.getAttribute("loginUserNickname"));
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
                    <div id="logo"><a href="Main.do">leon</a></div>
                </div>
                <ul id="headC">
                    <li id="i1">
                        <div id="b1"><a href="BoardSearchAction.do?boardname=board_best&sc=null&keyword=null&pages=1">개드립</a></div>
                        <div class="menubo">
                            <div id="menu1" class="menu">
                               <a href="#">개드립</a>
                               <a href="#">개드립 인기글</a>
                            </div>
                        </div>
                    </li>
                    <li id="i2">
                        <div id="b2"><a href="BoardSearchAction.do?boardname=board_normal&sc=null&keyword=null&pages=1">유저 개드립</a> </div>
                        <div class="menubo">
                            <div id="menu2" class="menu">
                               <a href="#">유저 개드립</a>
                               <a href="#">붐업 베스트</a>
                            </div>
                        </div>
                    </li>
                    <li id="i3">
                        <div id="b3"><a href="BoardSearchAction.do?boardname=board_read&sc=null&keyword=null&pages=1">읽을 거리 판</a></div>
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
                        <div id="b4">커뮤니티</div>
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
                        <div id="b5"><a href="BoardSearchAction.do?boardname=board_game&sc=null&keyword=null&pages=1">게임 판</a></div>
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
                        <div id="b6">놀이터</div>
                        <div class="menubo">
                            <div id="menu6" class="menu">
                                <a href="#">개드립콘</a>
                                <a href="#">걸그룹 판</a>
                                <a href="#">짤방 판</a>
                                <a href="#">시간 때우기 (게임)</a>
                            </div>
                        </div>
                    </li>
                    <li id="i7">
                        <div id="b7">기타</div>
                        <div class="menubo">
                            <div id="menu7" class="menu">
                                <a href="#">공지사항</a>
                                <a href="#">건의 신고 판</a>
                            </div>
                        </div>
                    </li>
                </ul>        
                <div id="headR">
                    <div id="search">
                        <i class="fas fa-search" id="searchi"></i>
                        <div id="searchbox">
                           <select name="sc">
                            <option value="title">제목</option>
                            <option value="contents">내용</option>
                            <option value="writer">글쓴이</option>
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
    <%
	SearchDAO dao = new SearchDAO();
	
	int count = dao.listcall();
	String pages = request.getParameter("page");
	int start = 0;
	count = (int)Math.ceil((double)count/20);
		Vector<SearchDTO> dto = (Vector<SearchDTO>)request.getAttribute("list");
	if(pages != null){
		start = Integer.parseInt(pages);
		start = (start-1)*20;
		
	}
	%>
	
	<% /* 게시판 이름 선정*/
	String bn;
	if(request.getParameter("boardname").equals("board_best")){
		bn = "개드립";
		
	}
	else if(request.getParameter("boardname").equals("board_normal")){
		bn = "유저 개드립";
		
	}
	else if(request.getParameter("boardname").equals("board_read")){
		bn = "읽을 거리 판";
		
	}
	else if(request.getParameter("boardname").equals("board_game")){
		bn = "게임 연재 / 정보 판";
		
	}
	else if(request.getParameter("boardname").equals("board_ride")){
		bn = "탈것 판";
		
	}
	else{
		bn="";
	}
	%>
            <a href="#" class="boardname"><%=bn %></a>
    <% SearchDAO dao2 = new SearchDAO(); 
    
    Vector<SearchDTO> dto2 = (Vector<SearchDTO>)request.getAttribute("posts");
    
    %>
    <form id="upNdown">
            <table id="post">
                <tr>
                    <td id="post_title"><%=dto2.get(0).getTitle()%></td>
                </tr>
                <tr>
                    <td id="post_info">
                       <div id="info_left">
                            <div><%=dto2.get(0).getWriter()%></div>
                            <div><%=dto2.get(0).getWdate()%></div>
                        </div>
                        <div>조회수 <%=dto2.get(0).getView()%></div>
                    </td>
                </tr>
                <tr>
                    <td id="post_contents"><%=dto2.get(0).getContents()%></td>
                </tr>
                <tr>
                
                    <td ><div id="post_favorite">
                    	
                            <input type="button" value="추천 <%=dto2.get(0).getUp()%>" id="pressup" name = "upNum">
                            <input type="button" value="반대 <%=dto2.get(0).getDown()%>" id="pressdown" name = "downNum">
                        
                        </div>
                    </td>
                
                </tr>
                
                <tr>
                    <td style="padding: 100px;">뭐넣지 여기에</td>
                </tr>
                <tr>
                    <td><div class="post_comments">
                            <div class="post_comments_top">
                                <div>댓글 쓰니</div>
                                <div>댓글 작성일</div>
                            </div>
                            <div class="post_comments_bottom">댓글 내용</div>
                        </div></td>
                </tr>
                <tr>
                    <td><div class="post_comments">
                            <div class="post_comments_top">
                                <div>댓글 쓰니</div>
                                <div>댓글 작성일</div>
                            </div>
                            <div class="post_comments_bottom">댓글 내용</div>
                        </div></td>
                </tr>
            </table>
            
         </form>   
            
             <div id="boardsearchcontents">
            <i class="fas fa-search" id="boardsearch"></i>
            <select name="sc2">
                            <option value="title">제목</option>
                            <option value="contents">내용</option>
                            <option value="writer">글쓴이</option>
                            </select> 
            <input type="text" id="boardkeyword">
            </div>
            
            <table id="boardtable">
                <tr class="boardtr">
                    <td class="boardtd">번호</td>
                    <td class="boardtd">제목</td>
                    <td class="boardtd">글쓴이</td>
                    <td class="boardtd">추천 수</td>
                    <td class="boardtd">날짜</td>
                </tr>
               <%
    			
    		if(dto != null ){
    			for(int i=0;i<dto.size();i++){ 
    			%>
    			
    		<tr class="boardtr">	
    		
    			<td class="boardtd"><%=dto.get(i).getIdx() %></td>
    			<td class="boardtd"><a href="Post.do?boardname=<%=request.getParameter("boardname") %>&idx=<%=dto.get(i).getIdx()%>"><%=dto.get(i).getTitle() %></a></td>
    			<td class="boardtd"><%=dto.get(i).getWriter() %></td>
    			<td class="boardtd"><%=dto.get(i).getUp() %></td>
    			<td class="boardtd"><%=dto.get(i).getWdate() %></td>
			</tr>
			<%
			} 
    		}
			%>
			<tr>
				<td>
				<div id="writetr"><input type="button" value="게시글 작성" id="write"></div>
				</td>
			</tr>
			<tr>
               <td>
               <div id="pagehrefs">
                <%
    	for(int i=1;i<=count;i++){   //?sc=title&keyword=&pages=0
   			 %>
    	<a href="BoardSearchAction.do?boardname=<%=request.getParameter("boardname")%>&sc=<%=request.getParameter("sc") %>&keyword=<%=request.getParameter("keyword") %>&pages=<%=i %>" class="pages">
    		<%=i %>
    	</a> 
    <%} %>
    </div>
               </td>
               </tr>
            </table>
            
      <input type="hidden" value="<%= request.getParameter("boardname")%>" id="hbn" name="hiddenBoardName">
      <input type="hidden" value="<%= request.getParameter("idx")%>" id="hidx" name="idx">
      <input type="hidden" value="<%= session.getAttribute("loginUserNickname")%>" id="hnn" name="hiddenNickName">
      <input type="hidden" value="<%= session.getAttribute("loginck")%>" id="hlc">
        </main>
  <footer>
        <div id="forpage"></div>
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
         <a href="https://www.dogdrip.net/policy">이용약관</a> |
         <a href="https://www.dogdrip.net/privacy">개인정보취급방침</a>
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
                <div class="sidemenut">개드립</div>
                <div class="sidemenuc">개드립</div>
                <div class="sidemenuc">개드립 인기글</div>
            </div>
            <div class="sidemenus">
                <div class="sidemenut">유저 개드립</div>
                <div class="sidemenuc">유저 개드립</div>
                <div class="sidemenuc">붐업 베스트</div>
            </div>
            <div class="sidemenus">
                <div class="sidemenut">읽을 거리 판</div>
                <div class="sidemenuc">전체 글 보기</div>
                <div class="sidemenuc">인기글</div>
                <div class="sidemenuc">기묘한 이야기</div>
                <div class="sidemenuc">호러 괴담</div>
                <div class="sidemenuc">감동</div>
                <div class="sidemenuc">자연</div>
                <div class="sidemenuc">유머</div>
                <div class="sidemenuc">과학</div>
                <div class="sidemenuc">역사</div>
                <div class="sidemenuc">기타 지식</div>
            </div>
            <div class="sidemenus">
                <div class="sidemenut">커뮤니티</div>
                <div class="sidemenuc">탈것 판</div>
                <div class="sidemenuc">익명 판</div>
                <div class="sidemenuc">컴퓨터 / IT 판</div>
                <div class="sidemenuc">영상 판</div>
                <div class="sidemenuc">고민 상담 판</div>
                <div class="sidemenuc">스포츠 판</div>
                <div class="sidemenuc">요리 판</div>
                <div class="sidemenuc">덕후 판</div>
                <div class="sidemenuc">창작 판</div>
                <div class="sidemenuc">음악 판</div>
                <div class="sidemenuc">정치 사회 판</div>
                <div class="sidemenuc">젠더 이슈 판</div>
            </div>
             <div class="sidemenus">
                <div class="sidemenut">게임 판</div>
                <div class="sidemenuc">LOL</div>
                <div class="sidemenuc">게임 연재 / 정보 판</div>
                <div class="sidemenuc">게임 판</div>
                <div class="sidemenuc">콘솔 게임 판</div>
                <div class="sidemenuc">모바일 게임 판</div>
                <div class="sidemenuc">로스트아크</div>
                <div class="sidemenuc">던전 앤 파이터</div>
            </div>
             <div class="sidemenus">
                <div class="sidemenut">놀이터</div>
                <div class="sidemenuc">개드립콘</div>
                <div class="sidemenuc">걸그룹 판</div>
                <div class="sidemenuc">짤방 판</div>
                <div class="sidemenuc">시간 때우기 (게임)</div>
            </div>
             <div class="sidemenus">
                <div class="sidemenut">기타</div>
                <div class="sidemenuc">공지사항</div>
                <div class="sidemenuc">건의 신고 판</div>
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

                <input type="submit" id="goLogin" class="logbtn" value="Login">
                <div class="bottom-text">
                    <a href="SignUp.do">회원가입 하기</a>                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;  &nbsp; &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;       
                    <a href="FindId.do">ID/PW 찾기</a>        
                </div>
                <input type="hidden" value="<%=request.getParameter("boardname") %>" name="boardName">
                <input type="hidden" value="<%= request.getParameter("idx")%>" name="postIdx">
                <!-- <input type="hidden" value="" name=""> -->
                
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
                 $("#loginWrap").css({
                     display:"block"
                 });
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
               $("#loginWrap").css("display","none");
                
            });
            /*서치박스*/
            $("#searchi").click(function(){
                $("#searchbox").css({'display': 'block', 'opacity': 0}).animate({'opacity': 1}, 300);
            });
            
            $('html').click(function(e){
                if($(e.target).is("#searchi")){}
                else if($(e.target).is("#searchbox")){}
                else if($(e.target).is("#searchinput")){}
                else if($(e.target).is("select")){}
                else if($(e.target).is("#searchsubmit")){
                    $(location).attr('href',"SearchAction.do?boardname=<%=request.getParameter("boardname")%>&sc="+$("select").val()+"&keyword="+$("#searchinput").val());
                }
                else{$("#searchbox").animate({'display': 'block','opacity': 0}, 300);}
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
            
            /* 로그아웃버튼*/
        	$("#logoutBtn").click(function(){
        		location.href="goLogout.do";
        	});
            
            $("#boardsearch").click(function(){
                $(location).attr('href',"BoardSearchAction.do?boardname=<%=request.getParameter("boardname")%>&sc="+$("select").val()+"&keyword="+$("#boardkeyword").val());
            });
            
            /* 게시글 작성 버튼 */
            $("#write").click(function() {
				$(location).attr('href',"WriteBoard.jsp?boardname=<%=request.getParameter("boardname")%>");
            	
			});
            $("#pressup").click(function(){
            	<%-- $(location).attr('href',"Press.do?boardname=<%=request.getParameter("boardname")%>&press=up&idx=<%=request.getParameter("idx")%>"); --%>
            	//alert($("#hbn").val());
            	//alert($("#pressup").val());
            	var isLogin = $("#hlc").val();
            	var nick = $("#hnn").val();
            	//alert(isLogin);
            	if(isLogin == "false" || isLogin=="" || isLogin=="null"){
            		alert("로그인이 필요합니다.");
            		$("#loginWrap").css({
                        display:"block"
                    });
            	}else{
            		//alert($("#hnn").val()+"님이 추천하였습니다.");
            		$.ajax({
           				url: "PostUp.jsp",
           				type: "post",
           				dataType: "json",
           				
           				data: {upNum : $("#pressup").val(),
           					   boardname : $("#hbn").val(),
           					   press : "up",
           					   idx : $("#hidx").val(),
           					   nickname : $("#hnn").val()
           					   },      				
           					  
           				success: function(data){
           					
           					$("#pressup").val(data.result);
           					//alert("통신 성공^^");
           					if(data.already == "already"){
           						alert("이미 추천 하셨습니다.");
           					}
           				},
           				complete: function(data){
           					
           				},
           				error: function(request,status,error){
           					
           					alert("통신 실패 ㅜㅜ");
           				}       						
            		});
            	}
            });
            $("#pressdown").click(function(){
            	<%-- $(location).attr('href',"Press.do?boardname=<%=request.getParameter("boardname")%>&press=down&idx=<%=request.getParameter("idx")%>"); --%>
            	var isLogin = $("#hlc").val();
            	var nick = $("#hnn").val();
            	//alert(isLogin);
            	if(isLogin == "false" || isLogin=="" || isLogin=="null"){
            		alert("로그인이 필요합니다.");
            		$("#loginWrap").css({
                        display:"block"
                    });
            	}else{
	            	$.ajax({
	       				url: "PostUp.jsp",
	       				type: "post",
	       				dataType: "json",
	       				
	       				data: {downNum : $("#pressdown").val(),
	       					   boardname : $("#hbn").val(),
	       					   press : "down",
	       					   idx : $("#hidx").val(),
	       					   nickname : $("#hnn").val()
	       					   },      				
	       					  
	       				success: function(data){
	       					
	       					$("#pressdown").val(data.result);
	       					//alert("통신 성공^^");
	       					if(data.already == "already"){
	       						alert("이미 추천 하셨습니다.");
	       					}
	       				},
	       				complete: function(data){
	       					
	       				},
	       				error: function(request,status,error){
	       					
	       					alert("통신 실패 ㅜㅜ");
	       				}       						
	        		});
            	}
            });        
        });
    </script>
</body>
</html>