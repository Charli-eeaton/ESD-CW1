<%-- 
    Document   : LoginSuccess
    Created on : 14-Dec-2020, 16:50:17
    Author     : ben
--%>

<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "https://www.w3.org/TR/html4/loose.dtd">
<html>
    <link rel="icon" href="https://www.seniorpedia.org/wp-content/uploads/2015/08/seniorpediaicons_health.png">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
        <title>Login Success Page</title>
    </head>
    <body>
       
        
        
        
        <h3> Please select one of the following options: <h3>
        <form method="post" action="UserServlet"> 
        List options:</h4> 
            <input type="radio" name="option" value="list0">List all patients and all invoices per selected period (inc. costs)<br />
            <input type="radio" name="option" value="list0">List private patients and NHS patients, separately<br />
            <input type="radio" name="option" value="patientTransfers">Transfer a Patient<br />
        <h4>Add options:</h4>
            <input type="radio" name="option" value="addUser">Add a new Doctor or Nurse user <br>
            <input type="radio" name="option" value="prescription"> Generate prescription<br>
        <h4>Calendar options:</h4> 
            <input type="radio" name="option" value="calendar">Book an appointment with a Doctor <br>
            <input type="radio" name="option" value="schedule">Check daily surgery schedule <br>  
        <h4>Payment Options:</h4> 
            <input type="radio" name="option" value="payBill">Pay A Bill <br>
            <input type="radio" name="option" value="changeBill">change Outstanding Bills <br>
            <input type="radio" name="option" value="createInvoice">Create an Invoice <br>
            <input type="radio" name="option" value="calculateTurnover">Calculate Turnover <br>
        <h4>Transfer Options</h4>
            <input type="radio" name="option" value="createTransfer">Create new Transfer <br>   

            <input type=submit value="Confirm"> <br />
            </form>
    </body>
</html>
