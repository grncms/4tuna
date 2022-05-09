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
<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css"/>

<title></title>
<style type="text/css">
	#posting{
		width: 800px;
		margin-left: auto;
		margin-right: auto;
		margin-top: 50px;
	}
</style>
<!-- Custom fonts for this template-->
<link href="/resources/common/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

<!-- Custom styles for this template-->
<link href="/resources/common/css/sb-admin-2.min.css" rel="stylesheet">
<link href="/resources/user/css/classCommon.css" rel="stylesheet">
<link href="/resources/common/css/boardCss.css" rel="stylesheet">

</head>
<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <%@ include file="/WEB-INF/views/member/include/classSidebar.jsp" %>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">
            <!-- Main Content -->
                <!-- Topbar -->
        <%@ include file="/WEB-INF/views/member/include/classNavbar.jsp" %>
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">
                    <div class="row" id="posting">
                        <!-- Area Chart -->
                        <div class="col-12">
							<div class="container_title shadow mb-4">
								<div class="header">클래스에 구성원 초대하기</div>
								<div class="body">구성원을 초대해 클래스에서 수업 관리를 시작하세요.</div>
							</div>
							
                            <div class="card shadow mb-4 ">
		                    <div class="container_base">
							<div class="homework_listitem">
								<div class="header">
									<span>클래스 코드</span>
									<div style="font-size: 13px; color: gray">클래스 코드와 초대 문구를 복사해 이메일, 메신저로 공유하세요.</div>
								</div>
								<div class="classTitleSetting">
									<div class="form-control" id="content" style=" margin-top: 10px; margin-bottom:25px; height: auto;">
									<p style="font-size: 35px; text-align: center; margin-top: 10px;">QZUV27</p>
									</div>	
								</div>
							</div>
							
							<div class="homework_listitem">
								<div class="header">
									<span>소개글</span>
								</div>
								<div class="classTitleSetting">
									<div class="form-control" id="content"style="resize:none; margin-top: 10px; margin-bottom:25px; height: auto;">
							창원경일고등학교의 4조 클래스에 초대합니다! <br> 클래스 코드 : QZUV27 <br>초대받은 클래스로 바로가기 <br>https://www.classting.com/c/QZUV27</div>	
							<button type="button" class="basic_button mt-10 w-25 p-2" style="float:right">초대문구 복사</button>
								</div>
							</div>
							</div>
						<!-- 클래스 설정 본문 끝 -->
						</div>	
                        </div>
                        <!-- Pie Chart -->	
                <!-- /.container-fluid -->
            </div>
            <!-- End of Main Content -->
		</div>
            <!-- Footer -->
            <!-- End of Footer -->
	</div>
</div>
    <!-- Bootstrap core JavaScript-->
    <script src="/resources/common/vendor/jquery/jquery.min.js"></script>
    <script src="/resources/common/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="/resources/common/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="/resources/common/js/sb-admin-2.min.js"></script> 



</body>
<!-- <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>

 -->
 	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
	
</html>