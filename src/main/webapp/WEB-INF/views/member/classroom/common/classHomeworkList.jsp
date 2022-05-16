<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>ForTest</title>
<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css" />

<!-- Custom fonts for this template-->
<link href="/resources/common/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

<!-- Custom styles for this template-->
<link href="/resources/common/css/sb-admin-2.css" rel="stylesheet">
<link href="/resources/user/css/classCommon.css" rel="stylesheet">
<link href="/resources/common/css/boardCss.css" rel="stylesheet">
<style type="text/css">

#posting {
	width: 800px;
	margin-left: auto;
	margin-right: auto;
	margin-top: 50px;
}

.container_base .footer {
	margin-top: 3rem;
}

.container_base .footer>* {
	margin-right: 0.5rem;
}

</style>

</head>
<body id="page-top">

<!-- Page Wrapper -->
<div id="wrapper">

	<!-- Sidebar -->
	<%@ include file="/WEB-INF/views/member/include/classSidebar.jsp" %>

	<!-- Content Wrapper -->
	<div id="content-wrapper" class="d-flex flex-column">

	<!-- Topbar -->
	<%@ include file="/WEB-INF/views/member/include/classNavbar.jsp" %>
		<div class="container-fluid">
			<div class="row" id="posting">
				<div class="col-12">
					<div class="container_title shadow mb-4">
						<div class="header">모든 과제</div>
						<div class="body">클래스에 배부된 모든 과제를 모아볼 수 있어요.</div>
						<div class="footer dropdown">
							<button type="button" class="basic_button dropdown-toggle" data-bs-toggle="dropdown">과제 만들기</button>
							<ul class="dropdown-menu">
								<li>
									<a class="dropdown-item" href="#">일반 과제</a>
								</li>
								<li>
									<a class="dropdown-item" href="#">자료실 과제</a>
								</li>
							</ul>
						</div>
					</div>
					<div class="card shadow mb-4 ">
						<div class="container_base">
							<div class="homework list">
								<div class="header">
									<div class="profile_box">
										<img class="profile" src="../../../../../resources/common/image/test.jpg" />
									</div>
									<span>박규원</span>
									<span>4월 22일</span>
									<span>자유공간</span>
								</div>
								<div class="body">
									<span class='badge badge_hw'>과제</span>
									<span class='badge badge_todayend'>오늘 종료</span>
									<span>수학문제 풀기</span>
									<div>마감 : 4월 25일 오후 11:59</div>
								</div>
								<div class="footer">
									<i class="fa-regular fa-comment"> 2</i> <i class="fa-regular fa-thumbs-up"> 2</i> <i class="fa-solid fa-check"> 1</i> <i class="fa-solid fa-question"> 3</i>
								</div>
							</div>
						</div>
						<div class="container_base">
							<div class="homework list">
								<div class="header">
									<div class="profile_box">
										<img class="profile" src="../../../../../resources/common/image/test.jpg" />
									</div>
									<span>박규원</span>
									<span>4월 22일</span>
									<span>자유공간</span>
								</div>
	
								<div class="body">
									<span class='badge badge_hw'>과제</span>
									<span class='badge badge_alreadyend'>기한 지남</span>
									<span>수학문제 풀기</span>
									<div>마감 : 4월 25일 오후 11:59</div>
								</div>
	
	
								<div class="footer">
									<i class="fa-regular fa-comment"> 2</i> <i class="fa-regular fa-thumbs-up"> 2</i> <i class="fa-solid fa-check"> 1</i> <i class="fa-solid fa-question"> 3</i>
								</div>
							</div>
						</div>
						<div class="container_base">
							<div class="homework list">
								<div class="header">
									<div class="profile_box">
										<img class="profile" src="../../../../../resources/common/image/test.jpg" />
									</div>
									<span>박규원</span>
									<span>4월 22일</span>
									<span>자유공간</span>
								</div>
	
								<div class="body">
									<span class='badge badge_hw'>과제</span>
									<span class='badge badge_after3'>3일 후 마감</span>
									<span>수학문제 풀기</span>
									<div>마감 : 4월 25일 오후 11:59</div>
								</div>
								<div class="footer">
									<i class="fa-regular fa-comment"> 2</i> <i class="fa-regular fa-thumbs-up"> 2</i> <i class="fa-solid fa-check"> 1</i> <i class="fa-solid fa-question"> 3</i>
								</div>
							</div>
						</div>
						<div class="container_base">
							<div class="homework list">
								<div class="header">
									<div class="profile_box">
										<img class="profile" src="../../../../../resources/common/image/test.jpg" />
									</div>
									<span>박규원</span>
									<span>4월 22일</span>
									<span>자유공간</span>
								</div>
	
								<div class="body">
									<span class='badge badge_hw'>과제</span>
									<span class='badge badge_afterNday'>25일 후 마감</span>
									<span>수학문제 풀기</span>
									<div>마감 : 4월 25일 오후 11:59</div>
								</div>
								<div class="footer">
									<i class="fa-regular fa-comment"> 2</i> <i class="fa-regular fa-thumbs-up"> 2</i> <i class="fa-solid fa-check"> 1</i> <i class="fa-solid fa-question"> 3</i>
								</div>
							</div>
						</div>
						<div class="container_base">
							<div class="homework list">
								<div class="header">
									<div class="profile_box">
										<img class="profile" src="../../../../../resources/common/image/test.jpg" />
									</div>
									<span>박규원</span>
									<span>4월 22일</span>
									<span>자유공간</span>
								</div>
	
								<div class="body">
									<span class='badge badge_hw'>과제</span>
									<span class='badge badge_graded'>채점 완료</span>
									<span>수학문제 풀기</span>
									<div>마감 : 4월 25일 오후 11:59</div>
								</div>
								<div class="footer">
									<i class="fa-regular fa-comment"> 2</i> <i class="fa-regular fa-thumbs-up"> 2</i> <i class="fa-solid fa-check"> 1</i> <i class="fa-solid fa-question"> 3</i>
								</div>
							</div>
						</div>
						<!-- Card Body -->
					</div>
				</div>
			</div>	
		</div>
	</div>
</div>






	<!-- End of Page Wrapper -->
	<!-- Bootstrap core JavaScript-->
	<script src="../../../../resources/common/vendor/jquery/jquery.min.js"></script>
	<script src="../../../../resources/common/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script src="../../../../resources/common/vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="../../../../resources/common/js/sb-admin-2.min.js"></script>

<script type="text/javascript">

$("#roleT").hide();
$("#roleS").hide();

if(${sessTeacher}==0){
	$("#roleT").hide();		
	$("#roleS").show();		
	$("#btn-open").hide();		
}else{
	$("#roleT").show();		
	$("#roleS").hide();		
	$("#btn-open").show();		
} 


$("#btnLogout").on("click", function(){
	
	$.ajax({
		async: true 
		,cache: false
		,type: "post"
		,url: "/member/logoutProc"
		/* ,data : { "mvmmId" : $("#mvmmId").val(), "mvmmPassword" : $("#mvmmPassword").val()} */
		,success: function(response) {
			if(response.rt == "success") {
				location.href = "/index";
			} else {
				// by pass
			}
		}
		,error : function(jqXHR, textStatus, errorThrown){
			alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
		}
	});	
});
</script>



<!-- Option 1: Bootstrap Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="/resources/common/bootstrap/bootstrap-5.1.3-dist/js/bootstrap.bundle.min.js"></script>  

</body>
	
</html>