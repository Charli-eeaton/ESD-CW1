/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ben
 */
public class UserServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        if (request.getParameter("option").equals("list0")) {
            request.getRequestDispatcher("/WEB-INF/list0.jsp").forward(request, response);
            
        } else if (request.getParameter("option").equals("listPeriod")) {
            request.getRequestDispatcher("/WEB-INF/listPeriod.jsp").forward(request, response);    
        } else if (request.getParameter("option").equals("addUser")) {
            request.getRequestDispatcher("/WEB-INF/addUser.jsp").forward(request, response);
        } else if (request.getParameter("option").equals("NewPatient")) {
            request.getRequestDispatcher("/WEB-INF/addUser.jsp").forward(request, response);
        } else if (request.getParameter("option").equals("Register")) {
            request.getRequestDispatcher("/WEB-INF/addPatient.jsp").forward(request, response); 
        } else if (request.getParameter("option").equals("calendar")) {
            request.getRequestDispatcher("/WEB-INF/calendar.jsp").forward(request, response);
        } else if (request.getParameter("option").equals("schedule")) {
            request.getRequestDispatcher("/WEB-INF/viewBooking.jsp").forward(request, response); 
        } else if (request.getParameter("option").equals("payBill")) {
            request.getRequestDispatcher("/WEB-INF/payBill.jsp").forward(request, response);
        } else if (request.getParameter("option").equals("createInvoice")) {
            request.getRequestDispatcher("/WEB-INF/createInvoice.jsp").forward(request, response);
        } else if (request.getParameter("option").equals("viewBills")) {
            request.getRequestDispatcher("/WEB-INF/viewBills.jsp").forward(request, response);
        } else if (request.getParameter("option").equals("prescription")) {
            request.getRequestDispatcher("/WEB-INF/prescription.jsp").forward(request, response);    
        } else if (request.getParameter("option").equals("patientTransfers")) {
            request.getRequestDispatcher("/WEB-INF/patientTransfers.jsp").forward(request, response);
        } else if (request.getParameter("option").equals("schedule")) {
            request.getRequestDispatcher("/WEB-INF/viewBooking.jsp").forward(request, response); 
         } else if (request.getParameter("option").equals("removepatient")) {
            request.getRequestDispatcher("/WEB-INF/deleteP.jsp").forward(request, response); 
         } else if (request.getParameter("option").equals("calculateTurnover")){
            request.getRequestDispatcher("/WEB-INF/Calculate.jsp").forward(request, response);
         } else if (request.getParameter("option").equals("Rprescription")){
            request.getRequestDispatcher("/WEB-INF/prescriptionReq.jsp").forward(request, response);
         } else if (request.getParameter("option").equals("viewPrices")){
            request.getRequestDispatcher("/WEB-INF/viewPrices.jsp").forward(request, response);
        } else {
            request.setAttribute("option", "error");
            request.getRequestDispatcher("/WEB-INF/error.jsp").forward(request, response);
        }
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
