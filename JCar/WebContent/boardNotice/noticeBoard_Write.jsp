<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../inc/header.jsp"%>
<div style="background-color:#f2f2f2">
<div class="container">
<div class="container" style="background-color:#FFFFFF; margin-top:4%">
<form action="<%=request.getContextPath()%>/writeNotice.do" method="post" id="act">
<fieldset>
<legend><strong>공지사항 등록</strong></legend>
<div class="form-group">
<label for="writer">작성자</label>
<input type="text" name="writer" id="writer" class="form-control" value="관리자" readonly>
</div>
<div class="form-group">
<strong>구분</strong><br/>
<input type="radio" id="1" name="category" value="전체공지"><label for="1">전체공지</label>
<input type="radio" id="2" name="category" value="긴급공지"><label for="2">긴급공지</label>
<input type="radio" id="3" name="category" value="이벤트"><label for="3">이벤트</label>
</div>
<div class="form-group">
<label for="title">제목</label>
<input type="text" name="title" id="title" class="form-control">
</div>
<div class="form-group">
<label for="content">내용</label>
<textarea class="form-control" name="content" id="content" rows="15" cols="20"></textarea>
</div>
<div class="form-group" style="text-align:center">
<input type="submit" class="btn btn-danger btn-lg" value="등록">
<a href="<%=request.getContextPath()%>/showNotice.do" class="btn btn-danger btn-lg">목록</a>
</div>
</fieldset>
</form>
</div>
</div>
</div>
<script>
$(function(){
	$("#act").submit(function(){
		if (!($(":radio").is(":checked"))){
			alert("분류를 선택해주세요.");
			return false;
		} else if ($("#title").val() == ""){
			alert("제목을 입력해주세요.");
			$("#title").focus();
			return false;
		} else if ($("#content").val() == ""){
			alert("내용을 입력해주세요.");
			$("#content").focus();
			return false;
		}
	});
});
</script>
<%@include file="../inc/footer.jsp"%>