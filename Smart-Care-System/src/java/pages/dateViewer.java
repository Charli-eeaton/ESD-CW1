/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pages;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.MyJBDC;

/**
 *
 * @author camer
 */
@WebServlet(name = "dateViewer", urlPatterns = {"/dateViewer"})
public class dateViewer extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        out.print("<table border='1' width='100%'");
        out.print("<tr><th>Booking ID</th><th>User Name</th><th>Appointment Reason</th><th>Time</th><th>Date</th>");
        List<com.UserInput> list = MyJBDC.getAllDates();
        
        

        String username = null;
        Cookie userCookie[] = request.getCookies();
        if (userCookie != null) {
            for (int i = 0; i < userCookie.length; i++) {
                if (userCookie[i].getName().equals("username")) // Retrieve username from the cookie
                {
                    username = userCookie[i].getValue();
                }
            }
            response.setContentType("text/html");
            out.println(" Hello!   " + username);
        } 
        else {
            out.println("No cookies found");
        }   
            
            

        for (com.UserInput e:list) {
            //out.print("<tr><td>" + e.getID()+ "</td><td>" + e.getName()+ "</td><td>" + e.getReason()+ "</td><td>" + e.getTime()+ "</td><td>" + e.getDate() + "</td><td>" + "<input type='radio' name='deleteRadio' value='"+e.getID() + "'>" + "</td><tr>");
            out.print("<tr><td>" + e.getID()+ "</td><td>" + e.getName()+ "</td><td>" + e.getReason()+ "</td><td>" + e.getTime()+ "</td><td>" + e.getDate() + "</td><td>" + "<a href = \"./dateRemover?userID="+e.getID()+"\">Delete" + "</td><tr>");
            
        }
 
        out.print("</table>");
        
        
        
        
       
        
        
       



        
        
        out.close();


    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
