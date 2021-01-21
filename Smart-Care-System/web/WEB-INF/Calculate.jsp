<%-- 
    Document   : Calculate
    Created on : 19-Jan-2021, 18:27:13
    Author     : jecoo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculate Turnover</title>
    </head>
    <body>
        <jsp:include page="header.jsp"/>
        <h1>create an invoice</h1>
        <h2>User's details:</h2>
        <form method="POST" action="calculateTurnover">     
            <table>
                <tr>
                    <td>Period:</td>
                    <td><input type="text" name="Start Date"/></td>
                    <td><input type="text" name="End Date"/></td>
                </tr>
    </body>
</html>
