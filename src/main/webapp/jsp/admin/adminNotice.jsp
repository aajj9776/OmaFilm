<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="web.main.util.Paging"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<link rel="stylesheet" href="css/admin/adminNoticeStyle.css" />
<link rel="stylesheet" href="css/admin/adminNoticeGlobals.css" />
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
									<div class="div" id="logout"><a href="${pageContext.request.contextPath}/Controller?type=logout">로그아웃</a></div>
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
										<div class="text-wrapper-2">번호</div>
									</div>
									<div class="cell-2">
										<div class="text-wrapper-3">선택</div>
									</div>
								</div>
								<div class="cell-3">
									<div class="text-wrapper-4">제목</div>
								</div>
								<div class="cell-4">
									<div class="text-wrapper-5">등록일</div>
								</div>
							</div>
							<div class="body">
							<c:if test="${not empty noticeList}">
								<c:set var="len" value="${fn:length(noticeList)}" />
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
											<div class="text-wrapper-6">${noticeList[i-1].n_idx}</div>
										</div>
										<div class="data-2">
											<div class="text-wrapper-7">${noticeList[i-1].n_title}</div>
										</div>
									</div>
									<div class="rectangle-wrapper">
										<input type="checkbox" class="rectangle" name="deleteIds"
											value="${noticeList[i-1].n_idx}" />
									</div>
									<div class="data-3">
										<div class="text-wrapper-8">${noticeList[i-1].n_time}</div>
									</div>
								</div>
							</c:forEach>
							</c:if>
						</div>
					</div>
					<!-- Paging을 이용해서 해야 한다+11개이상 목록이 있을땐 10개 까지만 출력 그 후 페이징을 통해 분할 -->
					 <!-- 페이징 -->
					<div class="frame-2">
						<div>
							<ol class="paging">
								<c:if test="${page.startPage < page.pagePerBlock}">
									<li class="disable">&lt;</li>
								</c:if>
								<c:if test="${page.startPage >= page.pagePerBlock}">
									<li class=""><a
										href="Controller?type=adminNotice&cPage=${page.nowPage - page.pagePerBlock}">&lt;</a></li>
								</c:if>
								<!-- <div class="nav"> -->
								<c:forEach begin="${page.startPage }" end="${page.endPage}" var="i">
									<c:if test="${i == page.nowPage}">
										<li class="now">${i}</li>
									</c:if>
									<c:if test="${i != page.nowPage}">
										<li class=" "><a
											href="Controller?type=adminNotice&cPage=${i}">${i}</a></li>
									</c:if>
								</c:forEach>


								<c:if test="${page.endPage < page.totalPage}">
									<li class=""><a
										href="Controller?type=adminNotice&cPage=${page.nowPage - page.pagePerBlock}">&gt;</a></li>
								</c:if>
								<c:if test="${page.endPage >= page.totalPage}">
									<li class=" disable">&gt;</li>
								</c:if>

							</ol>
						</div>
					</div>
					<!-- 페이징 끝-->
					
					
				</div>
				
				<form id="searchForm" method="post" action="Controller?type=adminSearch">
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
					<a href="Controller?type=adminAddNotice" class="text-wrapper-14">추가</a>
				</div>
				<div class="cell-6">
					<button type="button" class="text-wrapper-24"
						onclick="deleteNotices()">삭제</button>
				</div>
				<div class="bar">
					<a href="Controller?type=adminInquiry" class="element"><div
							class="text-wrapper-15">1:1 문의</div></a>
					<a href="Controller?type=adminFrequently" class="view">
						<div class="text-wrapper-16">자주 묻는 질문</a>
					</div>
					<div class="view-3">
						<div class="text-wrapper-18">공지사항</div>
					</div>
				</div>
				<div class="heading">고객센터 관리</div>
			</div>
			<div class="div-sidebar">
				<img class="img" src="img/adminNotice/1.png" />
				<div class="text-wrapper-19">관리자</div>
				<div class="list-2">
					<div class="item-link"><div class="text-wrapper-20"><a href="Controller?type=adminMovieDb">영화관리</a></div></div>
					<div class="item-link-2"><a href="Controller?type=adminEvent" class="text-wrapper-21">이벤트/혜택 관리</a></div>
					<div class="item-link-2"><div class="text-wrapper-22"><a href="Controller?type=adminCpHome">쿠폰관리</a></div></div>
					<div class="item-link-3"><div class="text-wrapper-23"><a href="Controller?type=adminNotice">고객센터 관리</a></div></div>
				</div>
			</div>
		</div>
	<script src="https://code.jquery.com/jquery-3.7.1.min.js"
        integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo="
        crossorigin="anonymous"></script>	
	<script>
function deleteNotices() {
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
  hiddenField.setAttribute("value", "adminDeleteNotices");
  form.appendChild(hiddenField);

  document.body.appendChild(form);
  form.submit();
}
function executeSearch() {
    document.getElementById("searchForm").submit();
}

$(function() {
    let audiAcc = ${count};

    $('.movie-link').each(function() {
        let path = $(this).attr('href');
        if (path) { // href 값이 존재하는 경우에만 처리
            path += "&audiAcc=" + audiAcc; // audiAcc 값을 추가
            $(this).attr('href', path); // 수정된 URL을 href 속성에 설정
        }
    });
});

//아이디가 로그아웃을 클릭했을때 로그아웃할거냐고 경고창
document.querySelector('#logout').addEventListener('click', function(event) {
    var confirmLogout = confirm("로그아웃하시겠습니까?");
    if (!confirmLogout) {
        // 사용자가 취소를 클릭하면 이벤트를 중단합니다.
        event.preventDefault();
    }
});
</script>
</body>
</html>
