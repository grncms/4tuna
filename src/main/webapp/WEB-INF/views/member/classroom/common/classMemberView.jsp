<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

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
<link href="../../../../../resources/common/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

<!-- Custom styles for this template-->
<link href="../../../../../resources/common/css/sb-admin-2.css" rel="stylesheet">
<link href="../../../../../resources/user/css/classCommon.css" rel="stylesheet">
<link href="../../../../../resources/common/css/boardCss.css" rel="stylesheet">


<title></title>
<style type="text/css">
	#posting{
		width: 800px;
		margin-left: auto;
		margin-right: auto;
		margin-top: 50px;
	}
#picture_change {
font-size:12px; 
font-weight:bold; 
border:none; 
margin-bottom:10px;
margin-top:0px;
margin-left:10px;
}

</style>
</head>
<body id="page-top">

	<!-- Page Wrapper -->
	<div id="wrapper">
		<jsp:include page="/WEB-INF/views/member/include/classSidebar.jsp" flush="true" />
		<div id="content-wrapper" class="d-flex flex-column">
		<jsp:include page="/WEB-INF/views/member/include/classNavbar.jsp" flush="true" />

		<!-- 여기에 내용  -->
		
		
	<div class="container-fluid">
			<div class="row" id="posting">
				<div class="col-12">
					<div class="container_title shadow mb-4">
						<div class="header">
							프로필 설정
						</div>
						<div class="body">
							<div class="col-lg-3" id="classImg">
								<img src="../../../../../resources/common/image/profile2.png"  width="70" height="70" >
							</div>
							<div class="col-lg-9" id="classInfo">
								<span style="font-size: 12px;">이 클래스에서만 사용할<br>
								내 프로필 이미지를 올려주세요.<br>
								(개인정보 보호에 주의)</span>
							</div>
							<div>
								<button type="button" class="btn btn-outline-primary w-30" id="picture_change" >사진 변경</button>
							</div>
						</div>
				
				</div>
				<div class="homework_list shadow mb-4">
					<div class="container_title" style="margin-top:20px;">
						<label for="ifmmName" class="form-label" style="font-weight: bold;">이름</label>
						<input type="text" class="form-control" id="ifmmName" name="ifmmName">
					<div style="text-align: right; margin-top:50px;">
						<button type="button" class="btn btn-outline-success" id="btn-add" style="margin-bottom:10px; width: 180px;" data-bs-toggle="modal" data-bs-target="#Change">변경사항 저장</button>
					</div>
					</div>
				</div>
		<!-- modal -->
			<div class="modal" tabindex="-1" id="Change">
			  <div class="modal-dialog">
			    <div class="modal-content">
			      <div class="modal-header">
			        <h5 class="modal-title">변경사항 저장</h5>
			        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			      </div>
			      <div class="modal-body">
			    	수정하시겠습니까?
				   </div>
			      <div class="modal-footer">
			        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
			        <button type="submit" class="btn btn-primary">확인</button>
			      </div>
			      </div>
			    </div>
			  </div>
		<!-- modal end -->
				<div style="clear:both;" class="homework_list shadow mb-4">
				<div class="container_title ">
	
					<p style="margin-bottom: 20px; margin-top: 10px; font-weight: bold;">클래스 알림 설정</p>
					
					<div class="form-check form-switch" style="display: inline; float: right;">
					  <input class="form-check-input" type="checkbox" role="switch" id="reply">
					</div>
					<span>댓글</span><br>
					<span style="font-size: 12px;">내 게시글에 댓글이 달리면 알림을 받을 수 있어요.</span><br>			
					
					<div class="form-check form-switch" style="display: inline; float: right;">
					  <input class="form-check-input" type="checkbox" role="switch" id="action">
					</div>		
					<span>반응</span><br>
					<span style="font-size: 12px;">내 게시글에 구성원이 반응하면 알림을 받을 수 있어요.</span>		
				</div>
				</div>
				
	 <!-- 선생님이 zoom 연동시 생성됨 -->			
				
					<div class="homework_list shadow mb-4">
						<div class="container_title" style="margin-top: 10px;">
							<p style="font-weight: bold;">실시간 수업 Zoom 연동 해제</p>
							<p style="font-size: 12px;">관리자로 활동하고 있는 모든 클래스에서 Zoom연동이 해제됩니다. 추후 실시간 수업을 이용하시려면 다시 Zoom을 연동해주세요.</p>
							<div style=" text-align: right;">
								<button type="button" class="btn btn-outline-danger" id="btn-add" data-bs-toggle="modal" style="width: 180px;" data-bs-target="#zoomOut">Zoom 연동 해제</button>
							</div>
						</div>
					</div>
				
			<!-- modal -->
					<div class="modal" tabindex="-1" id="zoomOut">
					  <div class="modal-dialog">
					    <div class="modal-content">
					      <div class="modal-header">
					        <h5 class="modal-title">줌연동 해제</h5>
					        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
					      </div>
					      <div class="modal-body">
							모든 클래스에서 zoom 연동을 끊으시겠어요?
						  </div>
					      <div class="modal-footer">
					        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
					        <button type="button" class="btn btn-primary">확인</button>
					      </div>
					      </div>
					    </div>
					  </div>
					  
	<!-- modal end -->
	<!-- 선생님이 zoom 연동시 생성됨 -->			
			
			
			
			<div class="homework_list shadow mb-4">
				<div class="container_title" style="margin-top: 10px;">
					<p style="font-weight: bold;">클래스 탈퇴</p>
					<p style="font-size: 12px;">이 클래스에서 탈퇴해도 기존에 작성한 콘텐츠와 활동 기록은 자동으로 삭제되지 않습니다.</p>
					<div style="text-align: right;">
						<button type="button" class="btn btn-outline-danger" id="btn-add" style="margin-bottom:10px; width: 180px;" data-bs-toggle="modal" data-bs-target="#goOut">클래스 탈퇴</button>
					</div>
				</div>
			</div>
			</div>		
	<!-- modal -->
					<div class="modal" tabindex="-1" id="goOut">
					  <div class="modal-dialog">
					    <div class="modal-content">
					      <div class="modal-header">
					        <h5 class="modal-title">클래스 탈퇴</h5>
					        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
					      </div>
					      <div class="modal-body">
							<p>이 클래스에서 탈퇴하시겠어요?</p>
						  </div>
					      <div class="modal-footer">
					        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
					        <button type="button" class="btn btn-primary">확인</button>
					      </div>
					      </div>
					    </div>
					  </div>
					  
	<!-- modal end -->
				</div>
			
				
			
			

			
		<jsp:include page="/WEB-INF/views/member/include/classFooter.jsp" flush="true" />
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

</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

</html>