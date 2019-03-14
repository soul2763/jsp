<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
      <footer>
        <center>
        <p>
       	  대표 : 류경선  |  사업자번호 111-11-111111  |  주소 : 경상남도 김해시 함박로</br>
​         전화 : 010-1111-1111  |  휴대폰 : 010-1111-1111  |  E-mail : studio@naver.com  |  카카오톡 : @studio</br>
          Copyright(C)류경선 All rights reserved.
          </br></br>
          <c:if test="${member == null}">
          <a href="./member/login.do">관리자 로그인</a>
          </c:if>
          <c:if test="${member != null}">
          <a href="./member/logout.do">관리자 로그아웃</a>
          </c:if>
        </p>
      </center>
      </footer>
    </div>
  </body>
</html>