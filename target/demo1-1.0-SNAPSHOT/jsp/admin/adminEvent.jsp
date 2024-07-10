<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<link rel="stylesheet" href="css/admin/adminEventStyle.css" />
<link rel="stylesheet" href="css/admin/adminEventGlobals.css" />
</head>
<body>
	<div class="div-wrapper">
		<div class="overlap-wrapper">
			<div class="overlap">
				<div class="div-con-wrap">
					<div class="frame">
						<div class="span-name"></div>
						<div class="text-wrapper">관리자 님</div>
						<div class="list">
							<div class="item">
								<div class="link">
									<div class="div">로그아웃</div>
									<div class="pseudo"></div>
								</div>
							</div>
						</div>
					</div>
					<div class="overlap-group">
						<div class="table">
							<div class="header-row">
								<div class="overlap-group-2">
									<div class="cell">
										<div class="text-wrapper-2">유형</div>
									</div>
									<div class="cell-2">
										<div class="text-wrapper-3">선택</div>
									</div>
								</div>
								<div class="cell-3">
									<div class="text-wrapper-4">이벤트/혜택 제목</div>
								</div>
								<div class="cell-4">
									<div class="text-wrapper-5">등록일</div>
								</div>
							</div>
							<div class="body">
								<c:set var="len" value="${fn:length(eventList)}" />
	                <c:if test="${page.end<=len}">
	                	<c:set var="end" value="${page.end}"/>
	                </c:if>
					<c:if test="${page.end>len}">
						<c:set var="end" value="${len}" />
					</c:if>
						
					<c:forEach var="i" begin="${page.begin}" end="${ end}" varStatus="status">
									<c:choose>
										<c:when test="${status.index == 0}">
											<div class="row">
										</c:when>
										<c:otherwise>
											<div class="row-${status.count}">
										</c:otherwise>
									</c:choose>
									<div class="overlap-group-3">
										<div class="data">
										<c:choose>
										    <c:when test="${eventList[i-1].nt_ct_code == 3}">
										        <div class="text-wrapper-6">이벤트</div>
										    </c:when>
										    <c:when test="${eventList[i-1].nt_ct_code == 4}">
										        <div class="text-wrapper-6">혜택</div>
										    </c:when>
										 </c:choose>
										</div>
										<div class="data-2">
											<div class="text-wrapper-7">${eventList[i-1].n_title}</div>
										</div>
									</div>
									<div class="rectangle-wrapper">
										<input type="checkbox" class="rectangle" name="deleteIds"
											value="${eventList[i-1].n_idx}" />
									</div>
									<div class="data-3">
										<div class="text-wrapper-8">${eventList[i-1].n_time}</div>
									</div>
							</div>
							</c:forEach>
						</div>
					</div>
					
					<div class="frame-2">   <!-- 페이징 시작 -->
					<div>
						<ol class="paging">
							<c:if test="${page.startPage < page.pagePerBlock}">
								<li class="disable">&lt;</li>
							</c:if>
							<c:if test="${page.startPage >= page.pagePerBlock}">
								<li class=""><a
									href="Controller?type=adminEvent&cPage=${page.nowPage - page.pagePerBlock}">&lt;</a></li>
							</c:if>
							<!-- <div class="nav"> -->
							<c:forEach begin="${page.startPage }" end="${page.endPage}" var="i">
								<c:if test="${i == page.nowPage}">
									<li class="now">${i}</li>
								</c:if>
								<c:if test="${i != page.nowPage}">
									<li class=" "><a
										href="Controller?type=adminEvent&cPage=${i}">${i}</a></li>
								</c:if>
							</c:forEach>
	
	
							<c:if test="${page.endPage < page.totalPage}">
								<li class=""><a
									href="Controller?type=adminEvent&cPage=${page.nowPage - page.pagePerBlock}">&gt;</a></li>
							</c:if>
							<c:if test="${page.endPage >= page.totalPage}">
								<li class=" disable">&gt;</li>
							</c:if>
	
						</ol>
					</div>
				</div>
					
				</div>
				
				<form id="searchForm" method="post" action="Controller?type=adminSearchEvent">
				<div class="button">
						<select id="searchCategory" name="searchCategory" class="text-wrapper-12">
							<option value="n_title">제목</option>
							<option value="n_content">내용</option>
						</select>
				</div>
				<div class="border">
					<div class="input">
						<div class="container-2">
							<input type="text" name="searchTerm" placeholder="검색어를 입력해 주세요." class="text-wrapper-13" />
						</div>
					</div>
					<button type="button" onclick="executeSearch()" class="button-2">검색</button>
				</div>
				</form>
				
				
				<div class="cell-5">
					<a href="Controller?type=adminAddEvent" class="text-wrapper-14">추가</a>
				</div>
				<div class="cell-6">
					<button type="button" class="text-wrapper-24"
						onclick="deleteEvents()">삭제</button>
				</div>
				</div>
				<div class="heading">이벤트/혜택관리</div>
			</div>
			<div class="div-sidebar">
				<img class="img" src="img/adminNotice/1.png" />
				<div class="text-wrapper-19">관리자</div>
				<div class="list-2">
					<div class="item-link"><div class="text-wrapper-20"><a href="Controller?type=adminMovieDb">영화관리</a></div></div>
					<div class="item-link-3"><div class="text-wrapper-21"><a href="Controller?type=adminEvent">이벤트/혜택 관리</a></div></div>
					<div class="item-link-2"><div class="text-wrapper-22"><a href="Controller?type=adminCpHome">쿠폰관리</a></div></div>
					<div class="item-link-2"><a href="Controller?type=adminNotice" class="text-wrapper-23">고객센터 관리</a></div>
				</div>
			</div>
		</div>
	</div>
	</div>
	<script>
function deleteEvents() {
  var checkboxes = document.querySelectorAll('input[name="deleteIds"]:checked');
  if (checkboxes.length === 0) {
    alert("삭제할 항목을 선택해주세요.");
    return;
  }
  else{
	  alert("삭제되었습니다.");
  }
  var form = document.createElement("form");
  form.setAttribute("method", "post");
  form.setAttribute("action", "Controller");

  checkboxes.forEach(function(checkbox) {
    var hiddenField = document.createElement("input");
    hiddenField.setAttribute("type", "hidden");
    hiddenField.setAttribute("name", "deleteIds");
    hiddenField.setAttribute("value", checkbox.value);
    form.appendChild(hiddenField);
  });

  var hiddenField = document.createElement("input");
  hiddenField.setAttribute("type", "hidden");
  hiddenField.setAttribute("name", "type");
  hiddenField.setAttribute("value", "adminDeleteEvents");
  form.appendChild(hiddenField);

  document.body.appendChild(form);
  form.submit();
}
function executeSearch() {
    document.getElementById("searchForm").submit();
}
</script>
</body>
</html>