<%-- 
    Document   : fun
    Created on : 29 Apr, 2020, 10:27:16 PM
    Author     : Admin
--%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="f" %> 

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>function tag</h1>
        
        <c:set var="name" value="jinal is smartest"> </c:set>
        <c:out value="${name}"></c:out>
        <h2>length of name : <c:out value="${f:length(name)}"></c:out></h2>
       
        <br>
        <c:out value="${f:contains(name,'is')}"></c:out>
        
        
        
        
        
    </body>
</html>
