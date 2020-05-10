
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <h1>core tags below </h1>
        <!--1. out tag:print krne ke liye exp tag ka alternative -->

        <!--2. set tag:to create vriables--> 
   
        <c:set var="i" value="5" scope="application"></c:set>
        <h1><c:out value="${i}"></c:out></h1>

            <hr>
            <!--3. if tsg true hogs to dikhaega -->
        <c:if test="${i==5}" >
            <h2>yes i=5 its true condition </h2>
        </c:if>

        <!--4. remove tag-->
        <c:remove var="i"></c:remove>
        <h1><c:out value="${i}">this is removed</c:out></h1>

            <!--5. choose when otherwise : java switch-->
        <c:choose>
            <c:when test="${i>0}">
                <h1>no. is positive</h1>
            </c:when>

            <c:when test="${i<0}">
                <h1>no. is negative</h1>
            </c:when>

            <c:otherwise>
                <h1>default case no. is zero </h1>
            </c:otherwise>
        </c:choose>

        <!--6. foreach tag--> 

        <c:forEach var="j" begin="1" end="10">
            <h1>value of j is=<c:out value="${j}"></c:out> </h1>
        </c:forEach>

        <c:url var="myurl" value="http://www.google.com/search" >
            <c:param name="q" value="learn code"></c:param>  
        </c:url>
        <c:out value="${myurl}"></c:out>

        <!--7. redirect-->
        <c:redirect url="${myurl}"> </c:redirect>


    </body>
</html>
