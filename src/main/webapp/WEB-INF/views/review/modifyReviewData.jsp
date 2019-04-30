<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="conPath" value="${pageContext.request.contextPath }"/>
{
	"guestId" : "${modifyReview.guestId }",
	"reserveCode" : ${modifyReview.reserveCode },
	"reviewCode" : ${modifyReview.reviewCode },
	"hotelCode" : "${modifyReview.hotelCode }",
	"reviewTitle" : "${modifyReview.reviewTitle }",
	"reviewScore" : ${modifyReview.reviewScore },
	"reviewContent" : "${modifyReview.reviewContent }",
	"reviewFile" : "${modifyReview.reviewFile }"
}
