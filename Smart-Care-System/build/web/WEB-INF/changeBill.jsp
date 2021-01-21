<%-- 
    Document   : changeBill
    Created on : 20-Jan-2021, 22:33:17
    Author     : becca
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>5.Add a New User</title>
    </head>
    <body>
        <jsp:include page="header.jsp"/>
        <h1>create an invoice</h1>
        <h2>User's details:</h2>
        <form method="POST" action="changeBill">     
            <table>
                 <tr>
                    <td>clientID:</td>
                    <td><input type="text" name="CID"/></td>
                </tr>
             
                    <td>New Amount Due:</td>
                    <td><input type="text" name="NAD"/></td>
                </tr>
               
                <tr> 
                    <td> <input type="submit" value=" Create Change price"/></td>
                </tr>
            </table>
        </form>   
    </body>
</html>
