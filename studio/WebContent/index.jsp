<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>studio</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="./js/slider.js"></script>
    <link rel="stylesheet"  href="./css/style.css"/>
    <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic:800|Noto+Serif+KR" rel="stylesheet">
  </head>
  <body>
    <div id="wrapper">
      <header>
        <a href="./index.do" class="logo"><img src="./img/main_logo.JPG" alt="로고"></a>
        <ul class="gnb">
          <li> <a href="./introduce/intro.do">소 개</a> </li>
          <li> <a href="./picture/picture_fam.do">사 진</a>
            <ul>
              <li> <a href="./picture/picture_fam.do" class="fam">가족 사진</a></li>
              <li> <a href="./picture/picture_snap.do" class="snap">스냅 사진</a></li>
            </ul>
          </li>
          <li> <a href="./information/info.do">이용 안내</a> </li>
          <li> <a href="./map/map.do">오시는 길</a> </li>
          <li> <a href="./reservation/reserve.do">예약</a> </li>
        </ul>
      </header>
      <main>
        <div class="main_slider">
          <ul>
            <li> <img src="./img/main_1.jpg" width="600px" height="400px" alt="slide1"></a> </li>
            <li> <img src="./img/main_2.jpg" width="600px" height="400px" alt="slide2"></a> </li>
            <li> <img src="./img/main_3.jpg" width="600px" height="400px" alt="slide3"></a> </li>
            <li> <img src="./img/main_4.jpg" width="600px" height="400px" alt="slide4"></a> </li>
            <li> <img src="./img/main_5.jpg" width="600px" height="400px" alt="slide5"></a> </li>
          </ul>
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
