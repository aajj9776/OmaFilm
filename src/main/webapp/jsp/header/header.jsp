<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="../../css/globals.css" />
<link rel="stylesheet" href="../../css/header.css" />

<header class="header">
    <div class="navbar">
        <div class="link-21"><div class="text-wrapper-26"><a href="/Controller?type=register">회원가입</a></div></div>
        <div class="link-22">
            <a href="https://www.figma.com/design/zjZiIKzfy5FWahhBCQ2XjX?node-id=67-612">
                <div class="text-wrapper-26">고객센터</div></a>
        </div>
        <div class="link-23"><div class="text-wrapper-27">관리자</div></div>
        <div class="text-wrapper-28"><a href="/jsp/login/login_1.jsp">로그인</a></div>
        <%--<div class="logout">로그아웃</div>--%>
        <div class="link-24"><div class="text-wrapper-26">빠른예매</div></div>
        <img class="link-26" src="../../img/link-1.png" />
        <img class="link-27" src="../../img/link-2.png" />
        <a href="www.naver.com"><div class="text-wrapper-29">예매</div></a>
        <a href="www.naver.com"><div class="text-wrapper-30">영화</div></a>
        <a href="www.naver.com"><div class="text-wrapper-31">이벤트</div></a>
        <a href="www.naver.com"><div class="text-wrapper-32">혜택</div></a>
        <img class="heading-link" src="../../img/heading-1-link.png" />
        <div class="m_all"></div>

        <%-- 예매 섹션에 마우스를 올렸을 때 보여지는 메뉴 --%>

        <div class="menu-ticketing">
            <div class="Line1" style="width: 31px; height: 0px; left: 764px; top: -2px; position: absolute; border: 3px white solid"></div>
            <div style="width: 77px; height: 21px; left: 651px; top: 7px; position: absolute; text-align: center; color: white; font-size: 15px; font-family: Kokoro; font-weight: 400; line-height: 22.50px; word-wrap: break-word">전체영화</div>
            <div style="width: 39px; height: 21px; left: 744px; top: 7px; position: absolute; text-align: center; color: white; font-size: 15px; font-family: Kokoro; font-weight: 400; line-height: 22.50px; word-wrap: break-word">예매</div>
        </div>

        <%-- 이벤트 섹션에 마우스를 올렸을 때 보여지는 메뉴 --%>
        <div class="menu-event">
            <div class="MenuBg" style="width: 1920px; height: 47px; padding-top: 13px; padding-bottom: 13px; padding-left: 972px; padding-right: 612px; left: 0px; top: 47px; position: absolute; background: rgba(0, 0, 0, 0.30); justify-content: flex-end; align-items: flex-start; gap: 22px; display: inline-flex">
                <div style="width: 110px; height: 21px; text-align: center; color: white; font-size: 15px; font-family: Kokoro; font-weight: 400; line-height: 22.50px; word-wrap: break-word">진행중 이벤트</div>
                <div style="width: 91px; height: 21px; text-align: center; color: white; font-size: 15px; font-family: Kokoro; font-weight: 400; line-height: 22.50px; word-wrap: break-word">지난 이벤트</div>
                <div style="width: 91px; height: 21px; text-align: center; color: white; font-size: 15px; font-family: Kokoro; font-weight: 400; line-height: 22.50px; word-wrap: break-word">당첨자발표</div>
            </div>
            <div class="Line3" style="width: 48px; height: 0px; left: 1121.50px; top: 48.50px; position: absolute; border: 3px white solid"></div>
        </div>

        <%-- 전체보기 눌렀을 때 나오는 창 --%>
        <div class="MenuAll" style="width: 1920px; height: 816px; position: absolute; top:100px; background: #53585A">
            <div style="width: 96px; height: 22px; left: 411px; top: 33px; position: absolute; text-align: center; color: white; font-size: 20px; font-family: Kokoro; font-weight: 400; line-height: 22.50px; letter-spacing: 2px; word-wrap: break-word">SITEMAP</div>
            <div style="width: 161px; height: 59px; left: 411px; top: 84px; position: absolute">
                <div style="width: 161px; height: 58px; left: 0px; top: 1px; position: absolute; border-top: 1px #7B7B7B solid; border-bottom: 1px #7B7B7B solid"></div>
                <div style="width: 86px; height: 29px; left: 38px; top: 15px; position: absolute; text-align: center; color: white; font-size: 20px; font-family: Kokoro; font-weight: 400; line-height: 22.50px; letter-spacing: 2px; word-wrap: break-word">영화</div>
            </div>
            <div style="width: 161px; height: 59px; left: 645px; top: 84px; position: absolute">
                <div style="width: 161px; height: 58px; left: 0px; top: 1px; position: absolute; border-top: 1px #7B7B7B solid; border-bottom: 1px #7B7B7B solid"></div>
                <div style="width: 86px; height: 29px; left: 38px; top: 15px; position: absolute; text-align: center; color: white; font-size: 20px; font-family: Kokoro; font-weight: 400; line-height: 22.50px; letter-spacing: 2px; word-wrap: break-word">예매</div>
            </div>
            <div style="width: 161px; height: 59px; left: 879px; top: 84px; position: absolute">
                <div style="width: 161px; height: 58px; left: 0px; top: 1px; position: absolute; border-top: 1px #7B7B7B solid; border-bottom: 1px #7B7B7B solid"></div>
                <div style="width: 86px; height: 29px; left: 38px; top: 15px; position: absolute; text-align: center; color: white; font-size: 20px; font-family: Kokoro; font-weight: 400; line-height: 22.50px; letter-spacing: 2px; word-wrap: break-word">이벤트</div>
            </div>
            <div style="width: 161px; height: 59px; left: 1113px; top: 84px; position: absolute">
                <div style="width: 161px; height: 58px; left: 0px; top: 1px; position: absolute; border-top: 1px #7B7B7B solid; border-bottom: 1px #7B7B7B solid"></div>
                <div style="width: 161px; height: 29px; left: 0px; top: 15px; position: absolute; text-align: center; color: white; font-size: 20px; font-family: Kokoro; font-weight: 400; line-height: 22.50px; letter-spacing: 2px; word-wrap: break-word">마이페이지</div>
            </div>
            <div style="width: 161px; height: 59px; left: 411px; top: 328px; position: absolute">
                <div style="width: 161px; height: 58px; left: 0px; top: 1px; position: absolute; border-top: 1px #7B7B7B solid; border-bottom: 1px #7B7B7B solid"></div>
                <div style="width: 161px; height: 29px; left: 0px; top: 15px; position: absolute; text-align: center; color: white; font-size: 20px; font-family: Kokoro; font-weight: 400; line-height: 22.50px; letter-spacing: 2px; word-wrap: break-word">헤택</div>
            </div>
            <div style="width: 161px; height: 59px; left: 645px; top: 328px; position: absolute">
                <div style="width: 161px; height: 58px; left: 0px; top: 1px; position: absolute; border-top: 1px #7B7B7B solid; border-bottom: 1px #7B7B7B solid"></div>
                <div style="width: 161px; height: 29px; left: 0px; top: 15px; position: absolute; text-align: center; color: white; font-size: 20px; font-family: Kokoro; font-weight: 400; line-height: 22.50px; letter-spacing: 2px; word-wrap: break-word">고객센터</div>
            </div>
            <div style="width: 161px; height: 32px; left: 411px; top: 184px; position: absolute; text-align: center; color: white; font-size: 20px; font-family: Kokoro; font-weight: 400; line-height: 22.50px; letter-spacing: 2px; word-wrap: break-word">전체 영화</div>
            <div style="width: 161px; height: 32px; left: 408px; top: 428px; position: absolute; text-align: center; color: white; font-size: 20px; font-family: Kokoro; font-weight: 400; line-height: 22.50px; letter-spacing: 2px; word-wrap: break-word">전체해택</div>
            <div style="width: 161px; height: 32px; left: 645px; top: 425px; position: absolute; text-align: center; color: white; font-size: 20px; font-family: Kokoro; font-weight: 400; line-height: 22.50px; letter-spacing: 2px; word-wrap: break-word">고객센터</div>
            <div style="width: 181px; height: 32px; left: 635px; top: 490px; position: absolute; text-align: center; color: white; font-size: 20px; font-family: Kokoro; font-weight: 400; line-height: 22.50px; letter-spacing: 2px; word-wrap: break-word">자주는 묻는 질문</div>
            <div style="width: 181px; height: 32px; left: 635px; top: 555px; position: absolute; text-align: center; color: white; font-size: 20px; font-family: Kokoro; font-weight: 400; line-height: 22.50px; letter-spacing: 2px; word-wrap: break-word">공지사항</div>
            <div style="width: 181px; height: 32px; left: 636px; top: 620px; position: absolute; text-align: center; color: white; font-size: 20px; font-family: Kokoro; font-weight: 400; line-height: 22.50px; letter-spacing: 2px; word-wrap: break-word">1:1문의 </div>
            <div style="width: 181px; height: 32px; left: 635px; top: 685px; position: absolute; text-align: center; color: white; font-size: 20px; font-family: Kokoro; font-weight: 400; line-height: 22.50px; letter-spacing: 2px; word-wrap: break-word">분실물 문의</div>
            <div style="width: 181px; height: 32px; left: 636px; top: 750px; position: absolute; text-align: center; color: white; font-size: 20px; font-family: Kokoro; font-weight: 400; line-height: 22.50px; letter-spacing: 2px; word-wrap: break-word">오시는 길</div>
            <div style="width: 161px; height: 32px; left: 645px; top: 184px; position: absolute; text-align: center; color: white; font-size: 20px; font-family: Kokoro; font-weight: 400; line-height: 22.50px; letter-spacing: 2px; word-wrap: break-word">빠른예매</div>
            <div style="width: 161px; height: 32px; left: 879px; top: 184px; position: absolute; text-align: center; color: white; font-size: 20px; font-family: Kokoro; font-weight: 400; line-height: 22.50px; letter-spacing: 2px; word-wrap: break-word">진행중 이벤트</div>
            <div style="width: 191px; height: 32px; left: 1095px; top: 184px; position: absolute; text-align: center; color: white; font-size: 20px; font-family: Kokoro; font-weight: 400; line-height: 22.50px; letter-spacing: 2px; word-wrap: break-word">마이페이지 홈</div>
            <div style="width: 167px; height: 32px; left: 1107px; top: 401px; position: absolute; text-align: center; color: white; font-size: 20px; font-family: Kokoro; font-weight: 400; line-height: 22.50px; letter-spacing: 2px; word-wrap: break-word">회원 정보 수정</div>
            <div style="width: 216px; height: 32px; left: 1086px; top: 255px; position: absolute; text-align: center; color: white; font-size: 20px; font-family: Kokoro; font-weight: 400; line-height: 22.50px; letter-spacing: 2px; word-wrap: break-word">나의 예매 내역 조회</div>
            <div style="width: 167px; height: 32px; left: 1107px; top: 328px; position: absolute; text-align: center; color: white; font-size: 20px; font-family: Kokoro; font-weight: 400; line-height: 22.50px; letter-spacing: 2px; word-wrap: break-word">나의 쿠폰 조회</div>
            <div style="width: 161px; height: 32px; left: 879px; top: 249px; position: absolute; text-align: center; color: white; font-size: 20px; font-family: Kokoro; font-weight: 400; line-height: 22.50px; letter-spacing: 2px; word-wrap: break-word">지난 이벤트</div>
            <div style="width: 161px; height: 32px; left: 645px; top: 249px; position: absolute; text-align: center; color: white; font-size: 20px; font-family: Kokoro; font-weight: 400; line-height: 22.50px; letter-spacing: 2px; word-wrap: break-word">상영시간표</div>
        </div>
    </div>
</header>

<script>
    // 이벤트 섹션에 마우스를 올렸을 때
    document.querySelector('.text-wrapper-31').addEventListener('mouseenter', function() {
        // menu-event를 보이게 합니다.
        document.querySelector('.menu-event').style.display = 'block';
        document.querySelector('.menu-ticketing').style.display = 'none';
    });

    // menu-event에서 마우스를 떼었을 때
    document.querySelector('.menu-event').addEventListener('mouseout', function(event) {
        // 마우스가 클래스가 menu-event의 바깥으로 나갔는지 확인합니다.
    if (!event.relatedTarget || event.relatedTarget.id !== 'menu-event') {
            // menu-event를 숨깁니다.
            document.querySelector('.menu-event').style.display = 'none';
        }
    });

    // 예매 섹션에 마우스를 올렸을 때
    document.querySelector('.text-wrapper-29').addEventListener('mouseenter', function() {
        // MenuTicketing을 보이게 합니다.
        document.querySelector('.menu-ticketing').style.display = 'block';
        document.querySelector('.menu-event').style.display = 'none';
    });

    // MenuTicketing에서 마우스를 떼었을 때
    document.querySelector('.menu-ticketing').addEventListener('mouseout', function(event) {
        // 마우스가 MenuTicketing의 바깥으로 나갔는지 확인합니다.
        if (!event.relatedTarget || event.relatedTarget.id !== 'menu-ticketing') {
            // MenuTicketing을 숨깁니다.
            document.querySelector('.menu-ticketing').style.display = 'none';
        }
    });

    // 메뉴 전체보기를 클릭했을 때 link-4 이미지가 cancle이미지로 바뀐다
    document.querySelector('.m_all').addEventListener('click', function() {
        var element = document.querySelector('.m_all');
        var style = window.getComputedStyle(element);
        var img = style.backgroundImage;

        //menu_all의 background-image가 cancle.png이면 MenuAll 을 나타나게 하고
        //menu_all의 background-image가 link-4.png이면 MenuAll을 숨긴다.

        if (img.includes('link-3.png')) {
            element.style.backgroundImage = "url('../../img/cancle.png')";
            document.querySelector('.MenuAll').style.display = 'block';
        }else if (img.includes("cancle.png")) {
            element.style.backgroundImage = "url('../../img/link-3.png')";
            document.querySelector('.MenuAll').style.display = 'none';
        }
    });
</script>