<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="conPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<div id="refundPolicy">
	<p>* 환불 규정 *</p>
	5일전 : 70%<br>
	3일전 : 50%<br>
	1일전 : 20%<br>
	당일 : 취소불가<br>
</div>
<table>
	<tr>
		<th>예약번호</th>
		<td>${cancelConfirm.reserveCode }</td>
	</tr>
	<tr>
		<th>호텔명</th>
		<td>${cancelConfirm.hotelName }</td>
	</tr>
	<tr>
		<th>객실명</th>
		<td>${cancelConfirm.roomName }</td>
	</tr>
	<tr>
		<th>체크인</th>
		<td><fmt:formatDate value="${cancelConfirm.reserveCheckin }" pattern="yyyy-MM-dd (E)"/></td>
	</tr>
	<tr>
		<th>체크아웃</th>
		<td><fmt:formatDate value="${cancelConfirm.reserveCheckout }" pattern="yyyy-MM-dd (E)"/></td>
	</tr>
	<tr>
		<th>결제금액</th>
		<td><fmt:formatNumber value="${cancelConfirm.paidPrice }" pattern="#,###"/>원</td>
	</tr>
	<tr>
		<th>환불금액</th>
		<td><fmt:formatNumber value="${refundPrice }" pattern="#,###"/>원</td>
	</tr>
</table>


	

