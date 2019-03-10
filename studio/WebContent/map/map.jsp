<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>studio</title>
    <link rel="stylesheet"  href="../css/style.css"/>
    <link href="https://fonts.googleapis.com/css?family=Cute+Font|Jua&amp;subset=korean" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic:800|Noto+Serif+KR" rel="stylesheet">
    <script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
  </head>
  <body>
    <div id="wrapper">
      <header>
        <a href="../index.do" class="logo"><img src="../img/main_logo.JPG" alt="로고"></a>
        <ul class="gnb">
          <li> <a href="../introduce/intro.do">소 개</a> </li>
          <li> <a href="../picture/picture_fam.do">사 진</a>
            <ul>
              <li> <a href="../picture/picture_fam.do" class="fam">가족 사진</a></li>
              <li> <a href="../picture/picture_snap.do" class="snap">스냅 사진</a></li>
            </ul>
           </li>
          <li> <a href="../information/info.do">이용 안내</a> </li>
          <li> <a href="./map.do">오시는 길</a> </li>
          <li> <a href="../reservation/reserve.do">예약</a> </li>
        </ul>
      </header>
      <main>
        <div id="sub">
          <div>
            <!--
            	* 카카오맵 - 약도서비스
            	* 한 페이지 내에 약도를 2개 이상 넣을 경우에는
            	* 약도의 수 만큼 소스를 새로 생성, 삽입해야 합니다.
            -->
            <!-- 1. 약도 노드 -->
            <div id="daumRoughmapContainer1551145624858" class="root_daum_roughmap root_daum_roughmap_landing"></div>

            <!-- 2. 설치 스크립트 -->
            <script charset="UTF-8" class="daum_roughmap_loader_script" src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>

            <!-- 3. 실행 스크립트 -->
            <script charset="UTF-8">
            	new daum.roughmap.Lander({
            		"timestamp" : "1551145624858",
            		"key" : "sdoj",
            		"mapWidth" : "700",
            		"mapHeight" : "500"
            	}).render();
            </script>
          </div>
          <div class="mapinfo">
            <div>
              <p> SUDIO 오시는 길</p>
            </div>
            <div>
              <p>
                <i class="fas fa-map-marked"></i> 주소<br/>
                &nbsp;&nbsp;경상남도 김해시 의창구 신월동 71-1번지 1층 STUDIO
                ( 김해시 의창구 상남로 192번길 44 )
              </p>
              <p>
                <i class="fas fa-car"></i> 자가용<br/>
                &nbsp;&nbsp;&nbsp;&nbsp;토월상가주변, 신월초등학교, 신월고등학교 도보 3분거리, 신월민원센터 주면 T-Station 자동차 정비소 앞쪽 위치<br/>
              </p>
              <p>
                <i class="fas fa-bus"></i> 버스<br/>
                &nbsp;&nbsp;&nbsp;&nbsp;신월아파트(106번, 210번, 211번), 신월민원센터(111번), 부원역입구 정류장에서 도보 10분거리
              </p>
              <p>
                # 매주 월요일은 휴무이며, 주말 스냅출장으로 인해 부재중 일 수 있으니 꼭 연락 후 방문해주세요.
              </p>
            </div>
          </div>
        </div>
      </main>
      <footer>
        <center>
        <p>
          대표 : 류경선  |  사업자번호 111-11-111111  |  주소 : 경상남도 김해시 함박로</br>
​         전화 : 010-1111-1111  |  휴대폰 : 010-1111-1111  |  E-mail : studio@naver.com  |  카카오톡 : @studio</br>
          Copyright(C)류경선 All rights reserved.
        </p>
      </center>
      </footer>
    </div>
  </body>
</html>
