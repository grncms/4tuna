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
<!-- Custom fonts for this template-->
<link href="/4tuna/resources/common/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

<!-- Custom styles for this template-->
<link href="/4tuna/resources/common/css/sb-admin-2.min.css" rel="stylesheet">
<link href="/4tuna/resources/user/css/classCommon.css" rel="stylesheet">


</head>
<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <ul class="navbar-nav sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
		    <img src="/4tuna/resources/common/image/header_logo.png"  width="180px;" style="margin-left: 10px;">

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Dashboard -->
            <li class="nav-item active">
            	<div class="col-md-3 mt-4" id="classImg"><img src="/4tuna/resources/user/image/a3.jpg"  width="50" height="50" style="border-radius: 7px; "></div>
				<div class="col-md-9 mt-4" id="classInfo"><span><b>4조</b></span><p><span>2022</span></div>
				<button type="button" class="btn btn-lg mt-1 w-100 p-2" id="btn-add"><i class="fa-solid fa-user-plus"></i>  구성원 초대하기</button>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Nav Item - Pages Collapse Menu -->
            <div class="sidebar-heading" style="color: #828282;">전체 메뉴</div>
            <li class="nav-item">
                <a class="nav-link" href="#"><i class="fa-solid fa-bullhorn" style="color: #828282;"></i> <span>모든 공지</span></a>
                <a class="nav-link" href="#"><i class="fa-solid fa-pencil" style="color: #828282;"></i> <span>모든 과제</span></a>
                <a class="nav-link" href="#"><i class="fa-solid fa-file-circle-check" style="color: #828282;"></i> <span>과제 리포트</span></a>
                <a class="nav-link" href="#"><i class="fa-solid fa-school-circle-check" style="color: #828282;""></i> <span>출석부</span></a>
                <a class="nav-link" href="#"><i class="fa-solid fa-users" style="color: #828282;"></i> <span>구성원</span></a>
                <a class="nav-link" href="#"><i class="fa-solid fa-gear" style="color: #828282;"></i> <span>클래스 설정</span></a>
            </li>

            <!-- Divider --> 
            <hr class="sidebar-divider">
            <!-- Heading -->
            <div class="sidebar-heading" style="color: #828282;">나만 참여한 공간</div>
            <li class="nav-item">
                <a class="nav-link" href="#"><i class="fa-solid fa-file-pen" style="color: #828282;"></i> <span>예약 / 임시저장한 글</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading" style="color: #828282;">내가 참여한 공간</div>

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages"
                    aria-expanded="true" aria-controls="collapsePages">
                    <i class="fas fa-fw fa-folder" style="color: #828282;"></i>
                    <span>모두를 위한 공간</span>
                </a>
                <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <a class="collapse-item" href="login.html">자유 공간</a>
                        <a class="collapse-item" href="register.html">학습 자료</a>
                        <a class="collapse-item" href="forgot-password.html">활동 사진</a>
                    </div>
                </div>
            </li>


            <!-- Divider -->
            <hr class="sidebar-divider d-none d-md-block">
        </ul>

        



    <!-- Bootstrap core JavaScript-->
    <script src="/4tuna/resources/common/vendor/jquery/jquery.min.js"></script>
    <script src="/4tuna/resources/common/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="/4tuna/resources/common/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="/4tuna/resources/common/js/sb-admin-2.min.js"></script> 



</body>
</html>