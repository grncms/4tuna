<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

		<div class="card shadow mb-4">
			<!-- <div class="rightbar"> -->
				<div class="container_base">
					<div class="title">점수등록</div>
				</div>
				<div class="container_base">
					<div class="title_hw">
						<div>마감일시</div>
						<!-- <div>기한지남</div> -->
					</div>
					<div><fmt:formatDate value="${item.cthpEndDateTime}" pattern="yyyy-MM-dd HH:mm:ss"/></div>
				</div>
				<div class="container_base">
					<div class="title_hw" >
					<div class="col-md-4 col-lg-4"><p style="font-size: 18px; font-weight: bold; color: black;">한동훈</p></div>
					<div class="col-md-8 col-lg-8"><p>80 점 / 100점</p><span class="badge bg-primary" role="button" onclick="location.href='/member/class/common/homeworkPostView'">과제보러가기</span></div>
					</div>
				</div>
				<div class="container_base">
					<div class="title_hw">
						<div>제출 현황</div>
						<div>전체 학생 6명 중 5명 제출</div>
					</div>
				</div>
				
				<div class="container_base">
					<div class="rightbar_button">
						<button type="button" class="basic_button w-50">점수 등록</button>
					</div>
				</div>
			<!-- </div> -->
		</div>
	



