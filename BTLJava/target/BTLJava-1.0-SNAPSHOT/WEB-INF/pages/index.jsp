<%-- 
    Document   : index
    Created on : Aug 8, 2023, 12:36:00 AM
    Author     : MTriet
--%>

<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <ul>
            <c:forEach items="$(Users)" var="p">
                <il>
                    $(p.id) - $(p.username) - $(p.email)
                </il>
            </c:forEach>
        </ul>
    </body>
</html>
