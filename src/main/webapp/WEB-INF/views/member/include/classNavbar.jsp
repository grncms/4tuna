<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!-- Content Wrapper -->
<nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                    <!-- Sidebar Toggle (Topbar) -->
                    <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                        <i class="fa fa-bars"></i>
                    </button>
             
                    <!-- Topbar Navbar -->
                    <ul class="navbar-nav ml-auto">
                        <!-- Nav Item - Alerts -->
                        <li class="nav-item dropdown no-arrow mx-1">
                            <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button">
                                <i class="fas fa-bell fa-fw"></i>
                            </a>
                        </li>

                        <!-- Nav Item - Messages -->
                        <li class="nav-item dropdown no-arrow mx-1">
                            <a class="nav-link dropdown-toggle" href="/chat" id="messagesDropdown" role="button">
                                <i class="fa-solid fa-comment"></i>
                                <!-- Counter - Messages -->
                                <!-- <span class="badge badge-danger badge-counter">7</span> -->
                            </a>
                        </li>
                        <div class="topbar-divider d-none d-sm-block"></div>
                        <!-- Nav Item - User Information -->
                        <li class="nav-item dropdown no-arrow">
                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				               <span class="mr-2 d-none d-lg-inline text-gray-600 small"><b>${sessName}</b></span>
					           <span class="mr-2 d-none d-lg-inline text-gray-600 small"><font id="roleT">선생님</font></span>
					           <span class="mr-2 d-none d-lg-inline text-gray-600 small"><font id="roleS">학생</font></span>
                               <img class="img-profile rounded-circle" src="/resources/common/image/profile2.png">
                            </a>
                            <!-- Dropdown - User Information -->
                            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
				               <a class="dropdown-item" href="/classMemberView">
				                   <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>&nbsp;&nbsp;클래스 정보
				               </a>
				               <a class="dropdown-item" href="/classList">
				                   <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>&nbsp;&nbsp;내 클래스
				               </a>
				               <div class="dropdown-divider"></div>
				               <a class="dropdown-item" id="btnLogout">
					               <c:if test="${not empty sessSeq}">
					                   <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>&nbsp;&nbsp;로그아웃
					               </c:if>
				               </a>
<!-- 				               <a class="dropdown-item" href="/index">
				                   <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>&nbsp;&nbsp;로그아웃
				               </a> -->
			          		</div>
                        </li>
                    </ul>
                </nav>