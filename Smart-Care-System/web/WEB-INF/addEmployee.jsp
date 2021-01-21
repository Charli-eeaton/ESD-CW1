<%-- 
    Document   : addEmployee
    Created on : 20-Jan-2021, 11:19:58
    Author     : maxfi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>5.Add Employee Details:</title>
    </head>
    <body>
        <jsp:include page="header.jsp"/>
        <h1>Add Employee Details:</h1>
        <h2>User's details:</h2>
        <form method="POST" action="NewUser">     
            <table>               
                <tr>
                    <td>Name:</td>
                    <td><input type="text" name="name"/></td>
                </tr>
                <tr>
                    <td>Address:</td>
                    <td><input type="text" name="address"/></td>
                </tr>
                <tr>
                    <td>Re-enter Username:</td>
                    <td><input type="text" name="username"/></td>
                </tr>
                <tr> 
                    <td> <input type="submit" value="Add User"/></td>
                </tr>
            </table>
        </form>   
    </body>
</html>




