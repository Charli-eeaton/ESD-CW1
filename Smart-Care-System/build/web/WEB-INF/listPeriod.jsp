#<%-- 
    Document   : ListPeriod
    Created on : 14-Dec-2020, 10:18:47
    Author     : ben
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>List patient</title>
    </head>
    <body>
        <jsp:include page="header.jsp"/>
        <h1>List Patient</h1>
        <form method="POST" action="listPeriod">  
        <table>
            <tr>
                Please select date:
            <input type='date' name='date'>
            </tr>
        </table>
            <td> <input type="submit" value="Confirm"/></td>
            </form
    </body>
</html>

