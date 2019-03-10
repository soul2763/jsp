<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>studio</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <link rel="stylesheet"  href="../css/style.css"/>
    <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic:800|Noto+Serif+KR" rel="stylesheet">
    
	<link href='../fullcalendar-3.10.0/fullcalendar.min.css' rel='stylesheet' />
	<link href='../fullcalendar-3.10.0/fullcalendar.print.min.css' rel='stylesheet' media='print' />
	<script src='../fullcalendar-3.10.0/lib/moment.min.js'></script>
	<script src='../fullcalendar-3.10.0/lib/jquery.min.js'></script>
	<script src='../fullcalendar-3.10.0/fullcalendar.min.js'></script>
	
	<script>
	$(document).ready(function() {
		$('#calendar').fullCalendar({ 
			header: { 
				left: 'prev,next today', 
				center: 'title', 
				right: 'month,basicWeek,basicDay'
			}, 
			defaultDate: new Date(),
			navLinks: true, // can click day/week names to navigate views 
			editable: false, 
			eventLimit: true, // allow "more" link when too many events 
			events: [ 
				{ 
					title: 'All Day Event', 
					start: '2019-04-01' 
				}, 
				{ 
					title: 'Long Event', 
					start: '2019-04-07', 
					end: '2019-04-10' 
				}, 
				{ 
					id: 999, 
					title: 'Repeating Event', 
					start: '2019-04-09T16:00:00'
				}
				] 
			});
		});
	</script> 
	<style>  
		#calendar { max-width: 100%; margin: 0 auto; }
		main > div {
    	width: 800px;
		}
		main > .comment > p{
  		font-family: 'Noto Serif KR', serif;
  		font-size: 18px;
}
	</style>
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
          <li> <a href="../map/map.do">오시는 길</a> </li>
          <li> <a href="./reserve.do">예약</a> </li>
        </ul>
      </header>
      <main>
			<div id='calendar'></div>
			<div class="comment">
				<p>
				위 스케줄 보시고 전화 & 카톡 예약문의 바랍니다.
				</p>
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
