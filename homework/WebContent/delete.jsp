<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<h2>����������</h2>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:if test="${result eq 0}">
	<script type="text/javascript">
		<!--
		alert('Ż�� ���� �ʾҽ��ϴ�');
		//-->
	</script>
</c:if>
<c:if test="${result eq 1}">
	<c:redirect url="login.start"/>		
</c:if>