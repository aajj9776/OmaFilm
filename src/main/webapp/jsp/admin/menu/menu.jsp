<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/globals.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/admin/adminMovieStyle.css" />
<div class="div-sidebar">
  <img class="element" src="img/adminMovie/1.png"/>
  <div class="item-link-wrapper">
  <div class="text-wrapper-22">관리자</div>
  	<div class="item-link"><div class="text-wrapper-24"><a href="Controller?type=adminMovieDb">영화관리</a></div></div>
  	<div class="item-link-2"><div class="text-wrapper-24"><a href="Controller?type=adminEvent">이벤트 관리</a></div></div>
  	<div class="item-link-3"><div class="text-wrapper-24"><a href="Controller?type=adminCpHome">쿠폰 관리</a></div></div>
  	<div class="item-link-4"><div class="text-wrapper-24"><a href="Controller?type=adminNotice">고객센터 관리</a></div></div>
  </div>
  <div class="item-link-5"></div>
</div>