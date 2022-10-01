<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="https://fonts.googleapis.com/earlyaccess/nikukyu.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/earlyaccess/nicomoji.css" rel="stylesheet">

<!DOCTYPE html>
<html lang="ja">
    <head>
        <meta charset="UTF-8">
        <title>メッセージボード</title>
        <link rel="stylesheet" href="<c:url value='/css/reset.css'/>">
        <link rel="stylesheet" href="<c:url value='/css/style.css'/>">

     </head>
    <body>

        <div id="wrapper">

            <div id="header">
                <h1>メッセージボード アプリケーション</h1>
            </div>

            <div id="content">
                ${param.content}
            </div>

            <div id="footer">
                by Taro Kirameki.
            </div>

        </div>

    </body>
</html>