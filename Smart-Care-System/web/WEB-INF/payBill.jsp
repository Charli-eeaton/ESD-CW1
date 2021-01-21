<%-- 
    Document   : payBill
    Created on : 17-Jan-2021, 15:43:41
    Author     : becca
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>List0</title>
    </head>
    <body>
        <jsp:include page="header.jsp"/>
        <h1>List</h1>
        <form method="POST" action="payBill">  
        <table>
            <tr>
                NHS or Private:
            <input type='radio' name='type' value='NHS'> NHS
            <input type='radio' name='type' value='Private'> Private
            </tr>
            <tr>
                    <td>clientID:</td>
                    <td><input type="text" name="name"/></td>
                </tr>
        </table>
            <td> <input type="submit" value="Confirm"/></td>
    </body>
</html>
