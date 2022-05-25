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
<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" />

<!-- Custom fonts for this template-->
<link href="../../../../../resources/common/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

<!-- Custom styles for this template-->
<link href="../../../../../resources/common/css/sb-admin-2.css" rel="stylesheet">
<link href="../../../../../resources/user/css/classCommon.css" rel="stylesheet">
<link href="../../../../../resources/common/css/boardCss.css" rel="stylesheet">


<title></title>
<style type="text/css">
#picture_change {
	font-size: 12px;
	font-weight: bold;
	border: none;
	margin-bottom: 10px;
	margin-top: 0px;
	margin-left: 10px;
}

.container_base .header {
	display:flex;
	align-items:center;
	gap:8px;
}

.container_base .header > span:nth-child(3){
	font-weight:normal;
}
.btn-zoom{
	background-color: #00C896;
	border: transparent;
	border-radius: 13px;
	padding:0.5rem 1rem 0.5rem 1rem;
	color: white;
	font-weight: bold;
	float: right
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

			<!-- Begin Page Content -->
	<div class="container-fluid">
		<div class="row" id="posting">
			<!-- Area Chart -->
			<div class="col-12">
				<div class="container_title shadow mb-4">
					<div class="header">실시간 수업</div>
					<div class="body">클래스의 실시간 수업목록을 확인할 수 있어요.</div>
<%-- 					<div class="footer">
						<c:if test="${teacherNy eq 1}"><button type="button" class="basic_button" onclick="location.href='/classBoardUpload'"><i class="fa-solid fa-video"></i>실시간 수업 만들기</button></c:if>
					</div> --%>
				</div>
				<form id="noticeList" name="noticeList" method="post">
				<input  type="hidden" id="ctcsSeq" name="ctcsSeq">
				<input  type="hidden" id=ctptSeq name="ctptSeq">
				<input  type="hidden" id="mmSeq" name="mmSeq">
				<div class="card shadow mb-4 ">
				<div class="container_base">
					<div class="body">실시간 수업 목록</div>
				</div>	
				<c:forEach items="${list}" var="item" varStatus="status">
					<div class="container_base">
						<div class="homework list">
							<div class="header" style="cursor: default;">
								<span class='badge badge_hw'>실시간 수업</span>
								<div><c:out value = "${item.start_time}"/></div>
							</div>
							<div class="body mt-2" style="cursor: pointer;">
								<p style="font-size: 22px; color: black; font-weight: bold;"><c:out value="${item.topic}"/></p>
								<br>
								<p style="font-size: 15px; color: black;">시작 시간 : <c:out value = "${item.start_time}"/></p>
								<p style="font-size: 15px; color: black; display: inline;">진행 시간 : <c:out value="${item.duration}"/> 분</p>
								<button type="button" class="btn btn-zoom" onclick="location.href='${item.join_url}'">수업 참여 하기</button>
							</div>
							<div class="footer mt-4 mb-2">
							</div>
						</div>
					</div>
				</c:forEach>	
				</div>
			</form>	
			</div>
		</div>
		<!-- End of Main Content -->

	</div>
	</div>
</div>


	<!-- End of Page Wrapper -->
	<!-- Bootstrap core JavaScript-->
	<script src="../../../../../resources/common/vendor/jquery/jquery.min.js"></script>
	<script src="../../../../../resources/common/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script src="../../../../../resources/common/vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="../../../../../resources/common/js/sb-admin-2.min.js"></script>
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
				location.href = "/";
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
<script src="/resources/common/bootstrap/bootstrap-5.1.3-dist/js/bootstrap.bundle.min.js"></script>  

</body>

</html>