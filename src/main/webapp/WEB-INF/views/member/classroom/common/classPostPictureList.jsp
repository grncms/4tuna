<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title></title>
<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" />

<!-- Custom fonts for this template-->
<link href="/resources/common/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

<!-- Custom styles for this template-->
<link href="/resources/common/css/sb-admin-2.css" rel="stylesheet">
<link href="/resources/user/css/classCommon.css" rel="stylesheet">
<link href="/resources/common/css/boardCss.css" rel="stylesheet">
<style type="text/css">
#posting {
	width: 1100px;
	margin-left: auto;
	margin-right: auto;
	margin-top: 50px;
}
.leftbarProfile {
	cursor: pointer;
}

.post>.header {
	margin-bottom: 0.5rem;
}

.post_title {
	cursor: pointer;
	display: inline-flex;
	align-items: center;
	gap: 0.5rem;
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
				<div class="col-xl-8 col-lg-8">
					<div class="container_title shadow mb-4">
						<div class="header">활동 사진</div>
							<div class="footer dropdown">
								<button type="button" class="basic_button" onclick="location.href='/classBoardUpload'">글쓰기</button>
							</div>
						</div>
						<div class="card shadow mb-4">
							<c:forEach items="${list}" var="item" varStatus="status">
							<c:if test="${item.ctboTypeCd eq 21}">
								<div class="container_base">
									<div class="homework list">
										<div class="header">
											<div class="profile_box">
												<img class="profile" src="../../../../../resources/common/image/test.jpg" />
											</div>
											<c:forEach items="${memberList}" var="itemMember" varStatus="status">
												<c:if test="${item.ctptWriter eq itemMember.ctcmSeq }"><span><c:out value="${itemMember.ctcmName}"/></span></c:if>
											</c:forEach>
											<span><fmt:formatDate value="${item.regDateTime}" pattern="yyyy-MM-dd HH:mm:ss"/></span>
										</div>
										<div class="body mt-2">
											<span class='badge badge_hw'>활동사진</span>
											<span onclick="location.href='/member/class/common/postview'"><c:out value="${item.ctptTitle}"/></span>
											<br><br>
											<p><c:out value="${item.ctptContent}"/></p>
											<br>
										</div>
										<div class="footer mt-3">
											<i class="fa-regular fa-comment"> 2</i>&nbsp;
											<i class="fa-regular fa-thumbs-up"> <c:out value="${item.ctptLike1}"/></i>&nbsp;
											<i class="fa-solid fa-check"> <c:out value="${item.ctptLike2}"/></i>&nbsp;
											<i class="fa-solid fa-question"> <c:out value="${item.ctptLike3}"/></i>
										</div>
									</div>
								</div>
							</c:if></c:forEach>	
						</div>
					</div>
					<%@ include file="/WEB-INF/views/member/include/classPostList_include.jsp" %>
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
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="/resources/common/bootstrap/bootstrap-5.1.3-dist/js/bootstrap.bundle.min.js"></script>  


</body>
	
</html>