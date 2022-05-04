<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">
	<img src="/resources/common/image/header_logo.png"  width="150" onclick="location.href='/member/main_teacher'">
	<!-- Topbar Navbar -->
	<ul class="navbar-nav ml-auto">
	
	    <!-- Nav Item - Alerts -->
	    <li class="nav-item mx-1">
	        <a class="nav-link" href="#" id="" role="button">
	            <i class="fas fa-bell fa-fw"></i>
	            <!-- Counter - Alerts -->
	        </a>
	    </li>
	
	    <!-- Nav Item - Messages -->
	    <li class="nav-item mx-1">
	        <a class="nav-link" href="#" id="" role="button">
	            <i class="fa-solid fa-comment"></i>
	            <!-- Counter - Messages -->
	            <!-- <span class="badge badge-danger badge-counter">7</span> -->
	        </a>
	    </li>
	    <div class="topbar-divider d-none d-sm-block"></div>
        <li class="nav-item dropdown no-arrow">
           <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
               <span class="mr-2 d-none d-lg-inline text-gray-600 small"><b>윤수빈</b></span>
	           <span class="mr-2 d-none d-lg-inline text-gray-600 small">선생님</span>
               <img class="img-profile rounded-circle" src="/resources/common/image/profile2.png">
           </a>
           <!-- Dropdown - User Information -->
           <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
               aria-labelledby="userDropdown">
               <a class="dropdown-item" href="/WEB-INF/views/member/memberInfo.jsp">
                   <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>&nbsp;&nbsp;개인정보
               </a>
               <a class="dropdown-item" href="/WEB-INF/views/member/classList_teacher.jsp">
                   <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>&nbsp;&nbsp;내 클래스
               </a>
               <div class="dropdown-divider"></div>
               <a class="dropdown-item" href="/WEB-INF/views/index/oneschool/index.jsp">
                   <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>&nbsp;&nbsp;로그아웃
               </a>
           </div>
       </li>
	</ul>
</nav>