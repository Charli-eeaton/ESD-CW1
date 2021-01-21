<%-- 
    Document   : prescription
    Created on : 18-Jan-2021, 14:54:25
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
        <form method="POST" action="prescription">     
            <table>
                 <tr>
                    <td>clientID:</td>
                    <td><input type="text" name="pname"/></td>
                </tr>
               
                              
                <tr>
                    <td>MEDICATION:</td>
                    <td><input type="text" name="medication"/></td>
                </tr>
                 <tr>
                    <td>DOSEAGE:</td>
                    <td><input type="text" name="doseage"/></td>
                </tr>
                 <tr>
                    <td>COST:</td>
                    <td><input type="text" name="cost"/></td>
                </tr>
               
                <tr> 
                    <td> <input type="submit" value="Generate Prescription"/></td>
                </tr>
            </table>
        </form>   
    </body>
</html>