<%@ page contentType="text/html;charset=UTF-8" language="java"  %>
<%@taglib uri="jakarta.tags.core" prefix="c" %>
<%
    int [] resultado =new int[20];
    resultado[0]=1;
    resultado[1]=1;
    
    for(int pos=2; pos <resultado.length; pos++){
        resultado[pos] = resultado[pos-1]+resultado[pos-2];
    }

    request.setAttribute("resultado", resultado);
%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <title>fibonacci</title>
    </head>
    
    <body> 
    <h1>Sequencia de fibonacci</h1>
    <c:forEach var="item" items="${resultado}">
        ${item}<br/>
    </c:forEach>
    </body>
</html>
