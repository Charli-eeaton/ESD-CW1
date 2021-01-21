<%-- 
    Document   : createInvoice
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
        <form method="POST" action="createInvoice">     
            <table>
                 <tr>
                    <td>clientID:</td>
                    <td><input type="text" name="name"/></td>
                </tr>
                 <tr>
                    <td>Patient Name:</td>
                    <td><input type="text" name="RName"/></td>
                </tr>
                 <tr>
                    <td>Patient Type:</td>
                    <td><input type="text" name="PType"/></td>
                </tr>
                 <tr>
                    <td>Medication:</td>
                    <td><input type="text" name="MEDI"/></td>
                </tr>
                         
                <tr>
                    <td>Appointment Date:</td>
                    <td><input type="text" name="date"/></td>
                </tr>
                 <tr>
                    <td>Amount Due:</td>
                    <td><input type="text" name="role"/></td>
                </tr>
               
                <tr> 
                    <td> <input type="submit" value=" Create Invoice"/></td>
                </tr>
            </table>
        </form>   
    </body>
</html>
