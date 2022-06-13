<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css" />
<!-- Custom fonts for this template-->
<link href="../../resources/common/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

<!-- Custom styles for this template-->
<link href="../../../resources/common/css/sb-admin-2.min.css" rel="stylesheet">
<link href="../../../resources/user/css/classCommon.css" rel="stylesheet">
<link href="../../../resources/common/css/boardCss.css" rel="stylesheet">
<link href="../../../resources/chat/css/chat.css" rel="stylesheet">

<title></title>

</head>
<body id="page-top">

	<!-- Page Wrapper -->
	<div id="wrapper">

		<!-- Sidebar -->
		<%@ include file="/WEB-INF/views/member/include/classSidebar.jsp"%>

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Topbar -->
			<%@ include file="/WEB-INF/views/member/include/classNavbar.jsp"%>

			<div id="container-fluid">
				<div class="row" id="posting">
					<div class="col-12 mb-5">
						<aside>
							<header>
								<input type="text" placeholder="search">
							</header>
							<ul>
								<c:forEach items="${memberList }" var="ml" varStatus="st">
									<li class="membersList" id="member">
										<input type="hidden" value="${ml.ctcmName }" id="name" class="name"> <input type="hidden" value="${ml.ctcmSeq}" id="seq" class="seq"> <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/1940306/chat_avatar_01.jpg" alt="">
										<div>
											<h2>
												<c:out value="${ml.ctcmName }" />
											</h2>
											<h3>
												<span class="status orange"></span>
												offline
											</h3>
										</div>
									</li>
								</c:forEach>
							</ul>
						</aside>
						<main id="main">
						</main>
					</div>
				</div>
			</div>
		</div>
	</div>

	<input type="hidden" value="${vo.ctcmSeq }" id="myId">
	<input type="hidden" value="${vo.ctcsSeq }" id="classId">
	<input type="hidden" value="${vo.ctcmName }" id="myName">



	<!-- End of Page Wrapper -->
	<!-- Bootstrap core JavaScript-->
	<script src="../../../../../resources/common/vendor/jquery/jquery.min.js"></script>
	<script src="../../../../../resources/common/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
	<script src="../../../../../resources/common/vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="../../../../../resources/common/js/sb-admin-2.min.js"></script>

	<script src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.6.1/sockjs.min.js" integrity="sha512-1QvjE7BtotQjkq8PxLeF6P46gEpBRXuskzIVgjFpekzFVF4yjRgrQvTG1MTOJ3yQgvTteKAcO7DSZI92+u/yZw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	<script>
	var client;
	var mySessionId = $("#myId").val();
	var classId = $("#classId").val();
	var myName = $("#myName").val();
	var receiver ; //memberList 클릭했을때 받은 정보로 데이터 입력됨
	var msg ="";
	//채팅창 시간 표시 위함
	var today = new Date();
	var hours = today.getHours();
	var minutes = today.getMinutes();
		$(function() {
			var msgTemplate; 
			var sock = new SockJS("/ctChatServer");
			client = Stomp.over(sock);
			client.connect({}, function() {
				console.log("connected stompTest");
				//Controller;s MessageMapping, header , message(자유형식)
				//내 아이디 구독
				client.subscribe('/sub/topic/'+classId + "/" + mySessionId ,function(msg){ //콜백함수는 메시지를 받으면 실행됨 msg는 받은 메세지 파라미터
					var data = JSON.parse(msg.body);
						msgTemplate ='<li class="you">'
							msgTemplate +='<div class="entete">';
							msgTemplate +='<h3>'+ hours+ "시" + minutes + "분" + '</h3>';
							msgTemplate +='<h2>'+ data.ctmgSender +'</h2>';
							msgTemplate +='<span class="status green"></span>';
							msgTemplate +='</div>';
							msgTemplate +='<div class="triangle"></div>';
							msgTemplate +='<div class="message">'+ data.ctmgMessage + '</div>';
							msgTemplate +='</li>' ;
							
							$("#chat").append(msgTemplate);
					})
			})
			})
			
			
			
			function send(){
			msg = $("#msg").val();
			var data = {
					'ctcsSeq' : $("#classId").val(),
					'ctmgReceiver' : receiver,
					'ctmgSender': myName,
					'ctmgSenderId' : mySessionId,
					'ctmgMessage' : msg
					}//클래스id,수신인id,발신인,발신인id,메세지
			client.send('/topic/public',{},JSON.stringify(data));
			
			var msgTemplate ='<li class="me">'
				msgTemplate +='<div class="entete">';
				msgTemplate +='<h3>'+ hours+ "시" + minutes + "분" + '</h3>';
				msgTemplate +='<h2>'+ myName +'</h2>';
				msgTemplate +='<span class="status blue"></span>';
				msgTemplate +='</div>';
				msgTemplate +='<div class="triangle"></div>';
				msgTemplate +='<div class="message">'+ msg + '</div>';
				msgTemplate +='</li>' ;
				$("#chat").append(msgTemplate);
				$("#msg").val("");
		}
		
		
		
		
		$(".membersList").click(function(){ //친구 id와 이름을 controller에 전송
			var params = {
					name : $(this).find($(".name")).val()
					,ctmgReceiver : $(this).find($(".seq")).val()
					,ctcsSeq : classId
					,myId : mySessionId
			}
			
			$.ajax({ //ajax형태로 /enterRoom에 전송
				type : "POST",
				url : "/enterRoom",
				data : JSON.stringify(params),
				contentType: "application/json; charset=UTF-8",
				dataType:"json",
				success:function(res){
					receiver = res.receiver;
					var List = res.chatList;
					var main = '<header>'
					main += '<img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/1940306/chat_avatar_01.jpg" alt="">'
					main += '<div>'
					main += '<h2 id="with">대화상대:'+res.name+'</h2>'
					main += '</div>'
					main += '<img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/1940306/ico_star.png" alt="">'
					main += '</header>'
					main += '<ul id="chat">'
					
					
					$.each(List,function(index,item){
						
						if(item.ctmgSenderId == mySessionId){
							main += '<li class="me">';
							main += '<div class="entete">';
							main +='<h3>'+ item.ctmgSendDate + '</h3>'; //시간표시
							main +='<h2>'+ item.ctmgSender +'</h2>';
							main +='<span class="status blue"></span>';
							main +='</div>';
							main +='<div class="triangle"></div>';
							main +='<div class="message">'+ item.ctmgMessage + '</div>';
							main += '</li>'
						}else{
							main += '<li class="you">';
							main += '<div class="entete">';
							main +='<h3>'+ item.ctmgSendDate + '</h3>';
							main +='<h2>'+ item.ctmgSender +'</h2>';
							main +='<span class="status green"></span>';
							main +='</div>';
							main +='<div class="triangle"></div>';
							main +='<div class="message">'+ item.ctmgMessage + '</div>';
							main += '</li>'
						}

					})
					
					main += '</ul>'
					main += '<footer>'
					main += '<input type="text" id="msg" /> <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/1940306/ico_picture.png" alt=""> <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/1940306/ico_file.png" alt=""> <input type="button" value="전송" onclick="send()">'
					main += '</footer>'
					
					$("#main").html(main)
					
					
				},
				error:function(XMLHttpRequest,textStatus,errorThrown){
					alert("통신실패");
				}
			})
			
		})
	</script>
</body>

</html>




