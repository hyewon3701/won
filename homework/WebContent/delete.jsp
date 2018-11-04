<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<h2>삭제페이지</h2>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:if test="${result eq 0}">
	<script type="text/javascript">
		<!--
		alert('탈퇴가 되지 않았습니다');
		//-->
	</script>
</c:if>
<c:if test="${result eq 1}">
	<c:redirect url="login.start"/>		
</c:if>