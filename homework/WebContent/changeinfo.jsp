<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <h2>회원가입페이지</h2>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:if test="${result eq 0}">
	<script type="text/javascript">
		<!--
		alert('가입하지않았습니다');
		//-->
	</script>
</c:if>
<c:if test="${result eq 1}">
	<c:redirect url="mypage.start"/>		
</c:if>

<form method="post" action="change.start">

	<div class="id">
		<span class="col1">아이디</span>
		<span class="col2">${userDto.user_id}</span>
		<span class="col3"></span>
	</div>
	<div class="passwd">
		<span class="col1">패스워드</span>
		<span class="col2"><input type="password" name="password" placeholder="${userDto.password}"></span>
		<span class="col3"></span>
	</div>
	<div class="repasswd">
		<span class="col1">패스워드 확인</span>
		<span class="col2"><input type="password" placeholder="${userDto.password}"></span>
		<span class="col3"></span>
	</div>
	<div class="username">
		<span class="col1">닉네임</span>
		<span class="col2"><input type="text" name="username" placeholder="${userDto.user_name}"></span>
		<span class="col3"></span>
	</div>
	<div class="gender">
		<span class="col1">성별</span>
		<span class="col2"><c:if test="${userDto.gender eq 1 }">여성</c:if>
						<c:if test="${userDto.gender eq 2 }">남성</c:if></span>
	</div>
	<div class="email">
		<span class="col1">이메일</span>
		<span class="col2"><input type="text" name="email" placeholder="${useDto.email}"></span>
		<span class="col3"></span>
	</div>
	<div class="button">
		<span class="col2"><input type="submit" name="change" value="가입"></span>
		<span class="col3"><input type="reset" value="취소"></span>
	</div>
</form>