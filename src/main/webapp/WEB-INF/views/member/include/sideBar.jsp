<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>


        <!-- Sidebar -->
        <ul class="navbar-nav sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
		    <img src="/resources/common/image/header_logo.png"  width="180px;" style="margin-left: 10px;">

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Dashboard -->
            <li class="nav-item active">
            	<div class="col-md-3 mt-4" id="classImg"><img src="/resources/user/image/a3.jpg"  width="50" height="50" style="border-radius: 7px; "></div>
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
        



