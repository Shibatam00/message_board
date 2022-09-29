<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:import url="../layout/app.jsp">
    <c:param name="content">

        <c:choose>

            <c:when test="${message != null}">

                <h2>id：${message.id}の詳細ページ</h2>

                    <p>タイトル：<c:out value="${message.title}" /></p>
                    <p>メッセージ：<c:out value="${message.content}"/></p>
                    <p>作成日時：<fmt:formatDate value="${message.created_at}" pattern="yyyy-MM-dd HH:mm:ss"/></p>
                    <p>更新日時：<fmt:formatDate value="${message.updated_at}" pattern="yyyy-MM-dd HH:mm:ss"/></p>
                    <br/>
                    <p><a href="${pageContext.request.contextPath}/index">一覧へ戻る</a></p>
                    <P><a href="${pageContext.request.contextPath}/edit?id=${message.id}">このメッセージを編集する</a></P>
            </c:when>
                 <c:otherwise>
                     <h2>お探しのデータは見つかりませんでした</h2>
                 </c:otherwise>
             </c:choose>
    </c:param>
</c:import>