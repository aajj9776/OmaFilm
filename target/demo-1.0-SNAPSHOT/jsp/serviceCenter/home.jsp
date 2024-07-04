<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>      
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/globals.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/serviceCenter/home_style.css" />
<title>Insert title here</title>
</head>
<body>
    <div class="screen">
      <div class="container-wrapper">
        <div class="container">
          <img class="footer" src="${pageContext.request.contextPath}/img/serviceCenter/home/footer.png" />
          <div class="frame">
            <div class="navbar">
              <div class="link"><div class="text-wrapper">회원가입</div></div>
              <div class="div-wrapper"><div class="text-wrapper">고객센터</div></div>
              <div class="div"><div class="text-wrapper-2">관리자</div></div>
              <div class="text-wrapper-3">로그인</div>
              <div class="link-2"><div class="text-wrapper">빠른예매</div></div>
              <img class="img" src="${pageContext.request.contextPath}/img/serviceCenter/home/link.png" />
              <img class="link-3" src="${pageContext.request.contextPath}/img/serviceCenter/home/link-1.png" />
              <img class="link-4" src="${pageContext.request.contextPath}/img/serviceCenter/home/link-2.png" />
              <div class="text-wrapper-4">예매</div>
              <a href="www.naver.com" target="_blank" rel="noopener noreferrer"
                ><div class="text-wrapper-5">영화</div></a
              >
              <div class="text-wrapper-6">이벤트</div>
              <a href="www.naver.com" target="_blank" rel="noopener noreferrer"
                ><div class="text-wrapper-7">혜택</div></a
              >
              <img class="heading-link" src="${pageContext.request.contextPath}/img/serviceCenter/home/heading-1-link.png" />
              <div class="link-5"></div>
            </div>
          </div>
          <div class="heading">고객센터 홈</div>
          <div class="frame-2">
            <div class="background">
              <div class="link-6">
              <a href="Controller?type=notice" class="a2">
                </a>
              </div>
            </div>
            <div class="link-wrapper">
              <div class="link-6">
              <a href="Controller?type=directions" class="a2">
               </a>
              </div>
            </div>
            <div class="background-2">
              <div class="link-6">
              <a href="Controller?type=sinquiry" class="a2">
               </a>
              </div>
            </div>
            <div class="background-3">
              <div class="link-6">
              <a href="Controller?type=faq" class="a2">
              </a>
              </div>
            </div>
          </div>
          
          <table class="t1">
			  <thead>
			    <tr>
			      <th colspan="2" class="heading-2">자주 묻는 질문</th>
			      <th><a href="Controller?type=faq" class="link-7">더보기</a></th>
			    </tr>
			  </thead>
			  <tbody>
			  	<c:forEach var="fvo" items="${far }" varStatus="fvs">
			    <tr>
			      <td>${fvs.index+1} </td>
			      <td><span class="text-wrapper-11">${fvo.n_title}</span></td>
			      <td>
			      	<fmt:parseDate value="${fvo.n_time}" pattern="yyyy-MM-dd HH:mm:ss" var="parsedDate"/>
    				<fmt:formatDate value="${parsedDate}" pattern="yyyy.MM.dd" />
			      </td>
			    </tr>
			     </c:forEach>
	
		        <c:if test="${fn:length(far) < 1 }">
		            <tr>
		                <td colspan="3">
		                등록된 데이터가 없습니다.
		                </td>
		            </tr>
		        </c:if>
			  </tbody>
		</table>
          
        <table class="t2">
			  <thead>
			    <tr>
			      <th colspan="2" class="heading-2">공지사항</th>
			      <th><a href="Controller?type=notice" class="link-7">더보기</a></th>
			    </tr>
			  </thead>
			  <tbody>
			  	<c:forEach var="nvo" items="${nar }" varStatus="nvs">
			    <tr>
			      <td>${nvs.index+1} </td>
			      <td><span class="text-wrapper-11">${nvo.n_title}</span></td>
			      <td>
			      	<fmt:parseDate value="${nvo.n_time}" pattern="yyyy-MM-dd HH:mm:ss" var="parsedDate"/>
    				<fmt:formatDate value="${parsedDate}" pattern="yyyy.MM.dd" />
			      </td>
			    </tr>
			     </c:forEach>
	
		        <c:if test="${fn:length(nar) < 1 }">
		            <tr>
		                <td colspan="3">
		                등록된 데이터가 없습니다.
		                </td>
		            </tr>
		        </c:if>
			    
			  </tbody>
		</table>  
		
          <div class="background-4">
            <div class="overlap-3">
              <div class="link-11"><div class="text-wrapper-13">고객센터</div></div>
              <div class="list">
                <div class="overlap-group-2">
                  <div class="item-link"><div class="text-wrapper-14"><a href="Controller?type=directions">오시는 길</a></div></div>
                  <div class="item-link-2"><div class="text-wrapper-15"><a href="Controller?type=faq">자주 묻는 질문</a></div></div>
                  <div class="link-13"><div class="text-wrapper-16"><a href="Controller?type=notice">공지사항</a></div></div>
                  <div class="item-link-3"><div class="text-wrapper-17"><a href="Controller?type=home"><%-- 고객센터 홈 --%></a></div></div>
                  <div class="link-14"><div class="text-wrapper-18"><a href="Controller?type=sinquiry">1:1문의</a></div></div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
</body>
</html>