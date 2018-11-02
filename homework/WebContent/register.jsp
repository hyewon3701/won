<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h2>회원가입페이지</h2>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:if test="${result eq 0}">
	<script type="text/javascript">
		<!--
		alert('아이디와 비밀번호가 일치하지 않습니다');
		//-->
	</script>
</c:if>
<c:if test="${result eq 1}">
	<c:redirect url="login.start"/>		
</c:if>

<form method="post" action="register.start">

	<div class="id">
		<span class="col1">아이디</span>
		<span class="col2"><input type="text" name="id" placeholder="아이디를 입력하세요"></span>
		<span class="col3"></span>
	</div>
	<div class="passwd">
		<span class="col1">패스워드</span>
		<span class="col2"><input type="password" name="password" placeholder="패스워드를 입력하세요"></span>
		<span class="col3"></span>
	</div>
	<div class="repasswd">
		<span class="col1">패스워드 확인</span>
		<span class="col2"><input type="password" placeholder="패스워드를 재입력하세요"></span>
		<span class="col3"></span>
	</div>
	<div class="username">
		<span class="col1">닉네임</span>
		<span class="col2"><input type="text" name="username" placeholder="닉네임을 입력하세요"></span>
		<span class="col3"></span>
	</div>
	<div class="gender">
		<span class="col1">성별</span>
		<span class="col2"><input type="radio" name="gender" value="1">여성</span>
		<span class="col3"><input type="radio" name="gender" value="2">남성</span>
	</div>
	<div class="email">
		<span class="col1">이메일</span>
		<span class="col2"><input type="email" name="email" placeholder="이메일을 입력하세요"></span>
		<span class="col3"></span>
	</div>
	<div class="button">
		<span class="col2"><input type="submit" name="register" value="가입"></span>
		<span class="col3"><input type="reset" value="취소"></span>
	</div>

</form>