<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:import url="../layout/app.jsp">
    <c:param name="content">

        <c:if test="${flash != null}">
            <div id="flush_success">
                <c:out value="${flash}" />
                <script>
                    function doReload() {
                        window.location.reload();
                    }
                    window.addEventListener('load', function() {
                        setTimeout(doReload, 5000);
                    })
                </script>
            </div>
        </c:if>

        <h2>メッセージ一覧</h2>
        <ul>

            <%
            int tag = 1;
            if (request.getParameter("page") != null) {

                int pages = Integer.parseInt(request.getParameter("page"));

                tag = ((pages - 1) * 15) + 1;
            }
            %>

            <c:forEach var="message" items="${messages}">
                <li><a
                    href="${pageContext.request.contextPath}/show?id=${message.id}">
                        <c:out value="<%=tag%>" />
                </a> :<c:out value="${message.title}" /> &gt; <c:out
                        value="${message.content}" /></li>
                <%
                tag++;
                %>
            </c:forEach>
        </ul>

        <div id="pagination">
            <br /> （全 ${messages_count} 件）<br />
            <c:forEach var="i" begin="1" end="${((messages_count - 1) / 15) + 1}"
                step="1">
                <c:choose>
                    <c:when test="${i == page}">
                        <c:out value="${i}" />&nbsp;
                    </c:when>
                    <c:otherwise>
                        <a href="${pageContext.request.contextPath}/index?page=${i}">
                            <c:out value="${i}" />
                        </a>&nbsp;
                    </c:otherwise>
                </c:choose>
            </c:forEach>
        </div>

        <p>
            <a href="${pageContext.request.contextPath}/new">新規メッセージの投稿</a>
        </p>
    </c:param>
</c:import>