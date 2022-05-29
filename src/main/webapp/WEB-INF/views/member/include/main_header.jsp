<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">
	<img src="/resources/common/image/header_logo.png"  width="150" onclick="location.href='/main'">
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
<!-- 	    <li class="nav-item mx-1">
	        <a class="nav-link" href="#" id="" role="button">
	            <i class="fa-solid fa-comment"></i>
	            Counter - Messages
	            <span class="badge badge-danger badge-counter">7</span>
	        </a>
	    </li> -->
	    <div class="topbar-divider d-none d-sm-block"></div>
        <li class="nav-item dropdown no-arrow">
           <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              <span class="mr-2 d-none d-lg-inline text-gray-600 small"><b>${sessName}</b></span>
	          <c:if test="${sessTeacher eq 1}"><span class="mr-2 d-none d-lg-inline text-gray-600 small"><font id="roleT">선생님</font></span></c:if>
	          <c:if test="${sessTeacher eq 0}"><span class="mr-2 d-none d-lg-inline text-gray-600 small"><font id="roleS">학생</font></span></c:if>
              <c:if test="${sessPath ne null}"><img class="img-profile rounded-circle" style="width: 40px; height: 40px;" src="${sessPath}${sessUuidName}"></c:if>
<!--                <img class="img-profile rounded-circle" src="/resources/common/image/profile2.png"> -->
           </a>
           <!-- Dropdown - User Information -->
           <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
               aria-labelledby="userDropdown">
               <a class="dropdown-item" href="/memberInfo">
                   <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>&nbsp;&nbsp;개인정보
               </a>
               <a class="dropdown-item" href="/classList">
                   <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>&nbsp;&nbsp;내 클래스
               </a>
               <div class="dropdown-divider"></div>
               <c:if test="${not empty sessSeq}">
               <a class="dropdown-item" id="btnLogout">
                   <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>&nbsp;&nbsp;로그아웃
               </a>
               </c:if>
<!--                <a class="dropdown-item" href="/index">
                   <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>&nbsp;&nbsp;로그아웃
               </a> -->
           </div>
       </li>
	</ul>
</nav>