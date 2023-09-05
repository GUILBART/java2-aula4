<%@ page contentType="text/html;charset=UTF-8" language="java"  %>
<%@taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <title>JSTL</title>
    </head>
    <body> 
       <% 
            
            String mensagem = "Boa Tarde";
            request.setAttribute("mensagem", mensagem);
            
            int valor = 20;
            request.setAttribute("numero", valor);
       %>
       <p>${mensagem}</p>

       <c:if test="${numero > 30}">
        <p>valor maior que 30</p>
       </c:if>

       <h2>ForEach</h2>
       <c:forEach var="cont" begin="1" end ="10">
        ${cont}<br/>



       </c:forEach>
       <h3>lista</h3>

       <c:forTokens var="fruta" items="Maça, Manga, Melão" delims=",">
        ${fruta}<br/>

       </c:forTokens>


       <h3>Estruturas de dados</h3>
       <%
       String[]dias = {"Seg" , "Ter" , "Quar" , " Quin" , "Sext" , "Sab" , "Dom"};
       request.setAttribute("dias", dias);
       %>

       <c:forEach var="d" items= "${dias}">
        ${d}<br />
       </c:forEach>
    </body>
</html>
