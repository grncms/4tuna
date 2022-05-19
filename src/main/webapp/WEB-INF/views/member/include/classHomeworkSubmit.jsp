<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

		<div class="card shadow mb-4">
			<!-- <div class="rightbar"> -->
				<div class="container_base">
					<div class="title">과제 제출</div>
				</div>
				<div class="container_base">
					<div class="title_hw">
						<div>마감일시</div>
						<!-- <div>기한지남</div> -->
					</div>
					<div><fmt:formatDate value="${item.cthpEndDateTime}" pattern="yyyy-MM-dd HH:mm:ss"/></div>
				</div>
				<div class="container_base">
				<div class="mb-1"><input type="text" class="form-control" id="title" name="title" value="제목입력"></div>
				<textarea class="form-control mb-1" id="mmDesc" name="mmDesc" rows="3" placeholder="내용입력"></textarea>
				<div class="input-group">
				  <input type="file" class="form-control" id="inputGroupFile04" aria-describedby="inputGroupFileAddon04" aria-label="Upload">
				  <button class="btn btn-outline-secondary" type="button" id="inputGroupFileAddon04">Button</button>
				</div>
				</div>
<!-- 				<div class="container_base">
					<div class="title_hw" >
					<div class="col-md-4 col-lg-4 mt-2"><p style="font-size: 18px; font-weight: bold; color: black;">한동훈</p></div>
					<div class="col-md-8 col-lg-8"><input type="text" class="form-control" id="" name="" placeholder="숫자만 작성"><span class="badge bg-primary">과제보러가기</span></div>
					</div>
				</div> -->
				<div class="container_base">
					<div class="title_hw">
						<div>채점 현황</div>
						<div>아직 채점 전 입니다.</div>
					</div>
				</div>
				
				<div class="container_base">
					<div class="rightbar_button">
						<button type="button" class="basic_button w-50">과제 등록</button>
					</div>
				</div>
			<!-- </div> -->
		</div>
	



