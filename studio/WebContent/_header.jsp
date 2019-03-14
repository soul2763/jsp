<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>studio</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="/studio/js/slider.js"></script>
    <link rel="stylesheet"  href="/studio/css/style.css"/>
    <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic:800|Noto+Serif+KR" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Cute+Font|Jua&amp;subset=korean" rel="stylesheet">
    <script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
  </head>
  <body>
    <div id="wrapper">
      <header>
        <a href="/studio/index.do" class="logo"><img src="/studio/img/main_logo.JPG" alt="로고"></a>
        <c:if test="${member != null}">
        <a href="/studio/write.do" class="btnWrite">사진 업로드</a>
        </c:if>
        <ul class="gnb">
          <li> <a href="/studio/introduce/intro.do">소 개</a> </li>
          <li> <a href="/studio/picture/picture_fam.do">사 진</a>
            <ul>
              <li> <a href="/studio/picture/picture_fam.do" class="fam">가족 사진</a></li>
              <li> <a href="/studio/picture/picture_snap.do" class="snap">스냅 사진</a></li>
            </ul>
          </li>
          <li> <a href="/studio/information/info.do">이용 안내</a> </li>
          <li> <a href="/studio/map/map.do">오시는 길</a> </li>
          <li> <a href="/studio/reservation/reserve.do">예약</a> </li>
        </ul>
      </header>