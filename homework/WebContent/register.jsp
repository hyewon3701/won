<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h2>회원가입페이지</h2>

<form method="post" action="register.start">
<div id="table">
	<div class="id">
		<span class="col1">아이디</span>
		<span class="col2"><input type="text" placeholder="아이디를 입력하세요"></span>
		<span class="col3"></span>
	</div>
	<div class="passwd">
		<span class="col1">패스워드</span>
		<span class="col2"><input type="password" placeholder="패스워드를 입력하세요"></span>
		<span class="col3"></span>
	</div>
	<div class="repasswd">
		<span class="col1">패스워드 확인</span>
		<span class="col2"><input type="password" placeholder="패스워드를 재입력하세요"></span>
		<span class="col3"></span>
	</div>
	<div class="username">
		<span class="col1">닉네임</span>
		<span class="col2"><input type="password" placeholder="패스워드를 재입력하세요"></span>
		<span class="col3"></span>
	</div>
	<div class="gender">
		<span class="col1">성별</span>
		<span class="col2"><input type="radio" value="1">여성</span>
		<span class="col3"><input type="radio" value="1">남성</span>
	</div>
	<div class="email">
		<span class="col1">이메일</span>
		<span class="col2"><input type="email" placeholder="이메일을 입력하세요"></span>
		<span class="col3"></span>
	</div>
	<div class="button">
		<span class="col2"><input type="submit" value="가입"></span>
		<span class="col3"><input type="reset" value="취소"></span>
	</div>
</div>
</form>