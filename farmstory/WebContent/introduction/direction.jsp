<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../_header.jsp" %>
      <section id="sub">
        <div>
          <img src="../img/sub_top_tit1.png" alt="introduction"/>
        </div>
        <div class="introduction">
          <aside>

            <img src="../img/sub_aside_cate1_tit.png" alt="팜스토리 소개"/>

            <ul>
              <li> <a href="/farmstory/introduction/hello.do">인사말</a> </li>
              <li class="on"> <a href="/farmstory/introduction/direction.do">찾아오시는 길</a> </li>
            </ul>
          </aside>
          <article>
            <nav>
              <img src="../img/sub_nav_tit_cate1_tit2.png" alt="찾아오시는 길">
              <p>
                HOME > 팜스토리 소개 > <strong>찾아오시는 길</strong>
              </p>
            </nav>
            <!-- 내용 시작-->
            <p><strong>팜스토리</strong><br/>
              주소: 경기도 이천시 잘한다구 신난다동 123<br/>
              전화: 01-234-5678
            </p>
            <p><strong>찾아오시는 길</strong></p>
            <div>
              <!--
              	* Daum 지도 - 약도서비스
              	* 한 페이지 내에 약도를 2개 이상 넣을 경우에는
              	* 약도의 수 만큼 소스를 새로 생성, 삽입해야 합니다.
              -->
              <!-- 1. 약도 노드 -->
              <div id="daumRoughmapContainer1550108026083" class="root_daum_roughmap root_daum_roughmap_landing"></div>

              <!-- 2. 설치 스크립트 -->
              <script charset="UTF-8" class="daum_roughmap_loader_script" src="http://dmaps.daum.net/map_js_init/roughmapLoader.js"></script>

              <!-- 3. 실행 스크립트 -->
              <script charset="UTF-8">
              	new daum.roughmap.Lander({
              		"timestamp" : "1550108026083",
              		"key" : "s7js",
              		"mapWidth" : "700",
              		"mapHeight" : "400"
              	}).render();
              </script>
            </div>
          </article>
        </div>
      </section>
<%@include file="../_footer.jsp" %>
