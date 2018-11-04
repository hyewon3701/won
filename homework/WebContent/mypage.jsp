<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<h2>마이페이지</h2>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<h2>${userDto.user_id}</h2>
<h2>${userDto.user_name }</h2>
<h2>${userDto.email }</h2>

<h2>
	<c:if test="${userDto.gender eq 1 }">
	여성
	</c:if>
	<c:if test="${userDto.gender eq 2 }">
	남성
</c:if>
<br>
<br>
<a href="change.start">정보변경</a>
<a href="delete.start">회원탈퇴<a>
</h2>
