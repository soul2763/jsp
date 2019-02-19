<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<section id="sub">
  <div>
    <img src="../img/sub_top_tit5.png" alt="community"/>
  </div>
  <div class="community">
    <aside>
      <img src="../img/sub_aside_cate5_tit.png" alt="커뮤니티"/>
      <ul>
        <li class="${cate=='notice' ? 'on':''}"> <a href="/farmstory/board/list.do?gr=community&cate=notice">공지사항</a> </li>
        <li class="${cate=='menu' ? 'on':''}"> <a href="/farmstory/board/list.do?gr=community&cate=menu">오늘의식단</a> </li>
        <li class="${cate=='chef' ? 'on':''}"> <a href="/farmstory/board/list.do?gr=community&cate=chef">나도요리사</a> </li>
        <li class="${cate=='feq' ? 'on':''}"> <a href="/farmstory/board/list.do?gr=community&cate=feq">1:1고객문의</a> </li>
        <li class="${cate=='qna' ? 'on':''}"> <a href="/farmstory/board/list.do?gr=community&cate=qna">자주묻는질문</a> </li>
      </ul>
    </aside>
    <article>
      <nav>
        <img src="../img/sub_nav_tit_cate5_tit_${cate }.png" alt="나도요리사">
        <p>
          HOME > 커뮤니티 > 
          <c:if test="${cate=='notice' }">
          	<strong>공지사항</strong>
          </c:if>
          <c:if test="${cate=='menu' }">
          	<strong>오늘의식단</strong>
          </c:if>
          <c:if test="${cate=='chef' }">
          	<strong>나도요리사</strong>
          </c:if>
          <c:if test="${cate=='feq' }">
          	<strong>1:1고객문의</strong>
          </c:if>
          <c:if test="${cate=='qna' }">
          	<strong>자주묻는질문</strong>
          </c:if>
          
        </p>
      </nav>