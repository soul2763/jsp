<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../_header.jsp" %>
      <section id="sub">
        <div>
          <img src="../img/sub_top_tit3.png" alt="croptalk"/>
        </div>
        <div class="croptalk">
          <aside>
            <img src="../img/sub_aside_cate3_tit.png" alt="농작물이야기"/>
            <ul>
              <li class="on"> <a href="/farmstory/board/list.do">농작물이야기</a> </li>
              <li> <a href="/farmstory/board/list.do">텃밭가꾸기</a> </li>
              <li> <a href="/farmstory/board/list.do">귀농학교</a> </li>
            </ul>
          </aside>
          <article>
            <nav>
              <img src="../img/sub_nav_tit_cate3_tit1.png" alt="농작물이야기">
              <p>
                HOME > 농작물이야기 > <strong>농작물이야기</strong>
              </p>
            </nav>
            <!-- 내용 시작-->
            <h3>내용입력</h3>
            <%@include file="/farmstory/board/list.do"%>
          </article>
        </div>
      </section>
<%@include file="../_footer.jsp" %>