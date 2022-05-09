<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>ForTest</title>
<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css" />

<!-- Custom fonts for this template-->
<link href="/resources/common/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

<!-- Custom styles for this template-->
<link href="/resources/common/css/sb-admin-2.css" rel="stylesheet">
<link href="/resources/user/css/classCommon.css" rel="stylesheet">
<link href="/resources/common/css/boardCss.css" rel="stylesheet">
<style type="text/css">
#posting {
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

		<div id="content-wrapper">
			<jsp:include page="/WEB-INF/views/member/include/classNavbar.jsp" flush="true" />
		
<!-- 내용 -->		

               <!-- Begin Page Content -->
               <div class="container-fluid">
                <div class="row" id="posting">
                    <!-- Area Chart -->
                    <div class="col-12">
                        <div class="container_title shadow mb-4">
                            <div class="header" >예약/임시저장한 글</div>
                            <div class="body">예약 및 임시저장 게시물이 있습니다.</div>
                        </div>
                        <div class="card shadow mb-4 ">
                        <div class="container_base" onclick="location.href='./classPostEdit.html';">
                            5월 2일 오전 11:02 자유 공간
                            <div class="homework_listitem mt-3">
                                <div class="title_hw" >
                                    <div class="col-md-10 col-lg-10" id="classInfo"><span><b>(글제목)모니터는역시</b></span><p><span style="color: #c8c8c8; font-size: 14px;">21:9~!~!~!</span></div>
                                    <div class="dropdown no-arrow">
                                        <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
                                        </a>
                                        <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in"
                                            aria-labelledby="dropdownMenuLink">
                                            <a class="dropdown-item text-danger" href="#">삭제</a>
                                        </div>
                                       </div>
                                </div>
                            </div>
                        </div>
                        <div class="container_base" onclick="location.href='./classPostEdit.html';">
                            5월 2일 오전 11:02 자유 공간
                            <div class="homework_listitem mt-3">
                                <div class="title_hw" >
                                    <div class="col-md-10 col-lg-10" id="classInfo"><span><b>(글제목)모니터는역시</b></span><p><span style="color: #c8c8c8; font-size: 14px;">21:9~!~!~!</span></div>
                                    <div class="dropdown no-arrow">
                                        <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
                                        </a>
                                        <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in"
                                            aria-labelledby="dropdownMenuLink">
                                            <a class="dropdown-item text-danger" href="#">삭제</a>
                                        </div>
                                       </div>
                                </div>
                            </div>
                        </div>
                        <div class="container_base" onclick="location.href='./classPostEdit.html';">
                            5월 2일 오전 11:02 자유 공간
                            <div class="homework_listitem mt-3">
                                <div class="title_hw" >
                                    <div class="col-md-10 col-lg-10" id="classInfo"><span><b>(글제목)모니터는역시</b></span><p><span style="color: #c8c8c8; font-size: 14px;">21:9~!~!~!</span></div>
                                    <div class="dropdown no-arrow">
                                        <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
                                        </a>
                                        <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in"
                                            aria-labelledby="dropdownMenuLink">
                                            <a class="dropdown-item text-danger" href="#">삭제</a>
                                        </div>
                                       </div>
                                </div>
                            </div>
                        </div>
                        <div class="container_base" onclick="location.href='./classPostEdit.html';">
                            5월 3일 오후 12:02 자유 공간
                            <div class="homework_listitem mt-3">
                                <div class="title_hw" >
                                    <div class="col-md-10 col-lg-10" id="classInfo"><span><b>(글제목)마우스는 역시</b></span><p><span style="color: #c8c8c8; font-size: 14px;">고민중입니다.</span></div>
                                    <div class="dropdown no-arrow">
                                        <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
                                        </a>
                                        <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in"
                                            aria-labelledby="dropdownMenuLink">
                                            <a class="dropdown-item text-danger" href="#">삭제</a>
                                        </div>
                                       </div>
                                </div>
                            </div>
                        </div>


                            <!-- Card Body -->
                        </div>
                    </div>
                    <!-- Pie Chart -->	
            <!-- /.container-fluid -->
        </div>
        <!-- End of Main Content -->



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


</body>
</html>