<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script
  src="https://code.jquery.com/jquery-3.7.1.js"
  integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4="
  crossorigin="anonymous"></script>
<title>Insert title here</title>
</head>
<body>
	<h1>test</h1>
	<table border="1">
        <tr>
            <th>ID</th>
            <th>title</th>
            <th>content</th>
        </tr>
        <c:forEach var="item" items="${list}" >
        	 <tr>
                <td><c:out value="${item.id}"/></td>
                <td><c:out value="${item.tit}"/></td>
                <td><c:out value="${item.cott}"/></td>
                
            </tr>
            	 <tr>
                <td>${item.id}</td>
                <td>${item.tit}</td>
                <td>${item.cott}</td>
                
            </tr>
        </c:forEach>
        
       
    </table>
    
    <script type="text/javascript">
    	alert();
    </script>
</body>
</html>