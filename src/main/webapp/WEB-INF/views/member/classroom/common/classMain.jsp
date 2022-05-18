<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<jsp:useBean id="CodeServiceImpl" class="com.cacao.classting.code.CodeServiceImpl"/>


<!doctype html>
<html lang="ko">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Bootstrap CSS -->
<link href="/resources/common/bootstrap/bootstrap-5.1.3-dist/css/bootstrap.min.css"  rel="stylesheet" >
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"/>
<!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"> -->

<!-- Custom fonts for this template-->
<link href="/resources/common/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

<!-- Custom styles for this template-->
<link href="/resources/common/css/sb-admin-2.min.css" rel="stylesheet">
<link href="/resources/user/css/classCommon.css" rel="stylesheet">
<link href="/resources/common/css/boardCss.css" rel="stylesheet">

<title></title>

</head>
<body id="page-top">
<c:set var="CodePost" value="${CodeServiceImpl.selectListCachedCode('6')}"/>
<!-- Page Wrapper -->
<div id="wrapper">

	<!-- Sidebar -->
	<%@ include file="/WEB-INF/views/member/include/classSidebar.jsp" %>
	<!-- Content Wrapper -->
	<div id="content-wrapper" class="d-flex flex-column">
	
	<!-- Topbar -->
	<%@ include file="/WEB-INF/views/member/include/classNavbar.jsp" %>

	<!-- Begin Page Content -->
	<div class="container-fluid">
		<div class="row" id="posting">
			<div class="col-12">
				<div class="container_title shadow mb-4">
					<div class="header"><c:out value="${item.ctcsName}"/></div>
					<div class="body"><c:out value="${item.ctcsName}"/> 클래스에 오신 것을 환영합니다</div>
				</div>
				<form id="postList" name="postList" method="post">
				<input  type="hidden" id="ctcsSeq" name="ctcsSeq">
				<input  type="hidden" id=ctptSeq name="ctptSeq">
				<input  type="hidden" id="mmSeq" name="mmSeq">
				<div class="card shadow mb-4">
					<div class="container_base">
						<div class="body">전체 게시글</div>
					</div>	
					<c:forEach items="${list}" var="item" varStatus="status">
					<c:if test="${item.ctptReservationTypeCd eq null}">
					<div class="container_base">
						<div class="homework list">
							<div class="header">
								<div class="profile_box">
									<img class="profile" src="/resources/common/image/test.jpg" />
								</div>
								<c:forEach items="${memberList}" var="itemMember" varStatus="status">
								<c:if test="${item.ctptWriter eq itemMember.ctcmSeq }"><span><c:out value="${itemMember.ctcmName}"/></span></c:if>
								</c:forEach>
								<span><fmt:formatDate value="${item.regDateTime}" pattern="yyyy-MM-dd HH:mm:ss"/></span>
							</div>
							<div class="body mt-1" onclick="location.href='javascript:goView(<c:out value="${item.ctptSeq}"/>)'">
								<c:if test="${item.ctboTypeCd eq 25}"><span class='badge badge_notice'>공지</span></c:if>
								<c:if test="${item.ctboTypeCd eq 19}"><span class='badge badge_graded'>자유공간</span></c:if>
								<c:if test="${item.ctboTypeCd eq 20}"><span class='badge badge_alreadyend'>학습자료</span></c:if>
								<c:if test="${item.ctboTypeCd eq 21}"><span class='badge badge_after3'>활동사진</span></c:if>
								<span><c:out value="${item.ctptTitle}"/></span>
								<br><br>
								<p><c:out value="${item.ctptContent}"/></p>
							</div>
							<div class="footer mt-3">
								<i class="fa-regular fa-comment"> 2</i>&nbsp;
								<i class="fa-regular fa-thumbs-up"> <c:out value="${item.ctptLike1}"/></i>&nbsp;
								<i class="fa-solid fa-check"> <c:out value="${item.ctptLike2}"/></i>&nbsp;
								<i class="fa-solid fa-question"> <c:out value="${item.ctptLike3}"/></i>
							</div>
						</div>
					</div>
					</c:if>
					</c:forEach>
<!-- 					<div class="container_base">
						<div class="body">과제 게시글</div>
					</div>	 -->
				</div>
				</form>
			</div>
		</div>
	<!-- End of Main Content -->
	</div>
	</div>
</div>

<!-- Bootstrap core JavaScript-->
<script src="/resources/common/vendor/jquery/jquery.min.js"></script>
<script src="/resources/common/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Core plugin JavaScript-->
<script src="/resources/common/vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Custom scripts for all pages-->
<script src="/resources/common/js/sb-admin-2.min.js"></script> 
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

goView = function(seq){
	$("#ctptSeq").val(seq);
	$("#postList").attr("action","/member/class/common/postview");
	$("#postList").submit();
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

</body>
<!-- <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>

 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="/resources/common/bootstrap/bootstrap-5.1.3-dist/js/bootstrap.bundle.min.js"></script>  

</html>