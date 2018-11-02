<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h2>로그인페이지</h2>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:if test="${result eq -1}">
	<script type="text/javascript">
		<!--
		alert('아이디와 비밀번호가 일치하지 않습니다');
		//-->
	</script>
</c:if>
<c:if test="${result eq 0}">
	<script type="text/javascript">
		<!--
		alert('아이디가 존재하지 않습니다');
		//-->
	</script>
</c:if>
<c:if test="${result eq 1}">
	<c:redirect url="mypage.start"/>		
</c:if>
<form method="post" action="login.start">
	<div class="id">
		<span class="col1">아이디</span>
		<span class="col2"><input type="text" name="id" placeholder="아이디를 입력하세요"></span>
		<span class="col3"></span>
	</div>
	<div class="passwd">
		<span class="col1">패스워드</span>
		<span class="col2"><input type="password" name="passwd" placeholder="패스워드를 입력하세요"></span>
		<span class="col3"></span>
	</div>
	<div class= "button">
		<span class="col1"><input type="submit" name="login" value="로그인"></span>
		<span class="col2"><input type="reset" value="취소"></span>
		<span class="col3"><input type="button" value="회원가입" onclick="location='register.start'"></span>
	</div>
</form>
