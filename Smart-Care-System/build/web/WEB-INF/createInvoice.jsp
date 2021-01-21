<%-- 
    Document   : createInvoice
    Created on : 18-Jan-2021, 14:54:25
    Author     : becca
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>



<html>
    <link rel="icon" href="https://www.seniorpedia.org/wp-content/uploads/2015/08/seniorpediaicons_health.png">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-teal.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"><style>
        body {font-family: "Roboto", sans-serif}
        .w3-bar-block .w3-bar-item {
            padding: 16px;
            font-weight: bold;
        }
    </style>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
    <nav class="w3-sidebar w3-bar-block w3-collapse w3-animate-left w3-card" style="z-index:3;width:250px;" id="mySidebar">
        <a class="w3-bar-item w3-button w3-hide-large w3-large" href="javascript:void(0)" onclick="w3_close()">Close <i class="fa fa-remove"></i></a>
        <a class="w3-bar-item w3-button w3-teal" href="#">Home</a>

        <form method="post" action="UserServlet"> 
        <a class="w3-bar-item w3-button" value="list0"><input type="radio" name="option" value="list0">List all patients and all invoices per selected period (inc. costs) <br></a>
        <a class="w3-bar-item w3-button" value="list0"><input type="radio" name="option" value="list0">List private patients and NHS patients, separately<br></a>
        <a class="w3-bar-item w3-button" value="patientTransfers"><input type="radio" name="option" value="patientTransfers">Transfer Patient <br></a>
        <a class="w3-bar-item w3-button" value="addUser"><input type="radio" name="option" value="addUser">Add doctor or nurse <br></a>
        <a class="w3-bar-item w3-button" value="schedule"><input type="radio" name="option" value="schedule">View Daily Schedule <br></a>
        <a class="w3-bar-item w3-button" value="changeBill"><input type="radio" name="option" value="changeBill">Change Price of Bill <br></a>
        <a class="w3-bar-item w3-button" value="createInvoice"><input type="radio" name="option" value="createInvoice">Make an invoice <br></a>
        <input <a class="w3-bar-item w3-button w3-teal"type=submit value="Confirm" href="#"></a>
        </form>
        
    </nav>

    <div class="w3-overlay w3-hide-large w3-animate-opacity" onclick="w3_close()" style="cursor:pointer" id="myOverlay"></div>

    <div class="w3-main" style="margin-left:250px;">

        <div id="myTop" class="w3-container w3-top w3-theme w3-large">
            <p><i class="fa fa-bars w3-button w3-teal w3-hide-large w3-xlarge" onclick="w3_open()"></i>
                <span id="myIntro" class="w3-hide">Test the margin</span></p>
        </div>

        <header class="w3-container w3-theme" style="padding:64px 32px">
            <h1 class="w3-xxxlarge">Smart Care System</h1>
        </header>

        <div class="w3-container" style="padding:32px">

            <h2>create an invoice</h2>
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
           
        </div>

        <footer class="w3-container w3-theme" style="padding:32px">
            <p>Smart Care System Group 15 UWE 2021 </p>
        </footer>

    </div>

    <script>
        // Open and close the sidebar on medium and small screens
        function w3_open() {
            document.getElementById("mySidebar").style.display = "block";
            document.getElementById("myOverlay").style.display = "block";
        }

        function w3_close() {
            document.getElementById("mySidebar").style.display = "none";
            document.getElementById("myOverlay").style.display = "none";
        }

        // Change style of top container on scroll
        window.onscroll = function () {
            myFunction()
        };
        function myFunction() {
            if (document.body.scrollTop > 80 || document.documentElement.scrollTop > 80) {
                document.getElementById("myTop").classList.add("w3-card-4", "w3-animate-opacity");
                document.getElementById("myIntro").classList.add("w3-show-inline-block");
            } else {
                document.getElementById("myIntro").classList.remove("w3-show-inline-block");
                document.getElementById("myTop").classList.remove("w3-card-4", "w3-animate-opacity");
            }
        }

        // Accordions
        function myAccordion(id) {
            var x = document.getElementById(id);
            if (x.className.indexOf("w3-show") == -1) {
                x.className += " w3-show";
                x.previousElementSibling.className += " w3-theme";
            } else {
                x.className = x.className.replace("w3-show", "");
                x.previousElementSibling.className =
                        x.previousElementSibling.className.replace(" w3-theme", "");
            }
        }
    </script>
</body>



