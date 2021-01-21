/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.Cookie;
import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.MyJBDC;

/**
 *
 * @author ben
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        PrintWriter out = response.getWriter();
    
        
        
        
        // get user input for username and password
        String username = (String) request.getParameter("username");
        String password = (String) request.getParameter("password");
        
        Cookie userCookie = new Cookie("username", username);
        response.addCookie(userCookie);


        //Set variables to user input
        UserInput e = new UserInput();
        e.setUsername(username);
        e.setPassword(password);
        

        int status = model.MyJBDC.loginauth(e);
        if (status == 1) {
            out.println("<p>Login successful DOCTOR</p>");
            request.getRequestDispatcher("LoginSuccessDoctor.jsp").include(request, response);
        } 
        else if (status == 2) {
            out.println("<p>Login successful NURSE</p>");
            request.getRequestDispatcher("LoginSuccessDoctor.jsp").include(request, response); 
        }
        else if (status == 3) {
            out.println("<p>Login successful CLIENT</p>");
            request.getRequestDispatcher("LoginSuccessClient.jsp").include(request, response);
        }
        else if (status == 4) {
            out.println("<p>Login successful Admin</p>");
            request.getRequestDispatcher("LoginSuccessAdmin.jsp").include(request, response);
        }
        else {
            out.println("<p><font color=\"red\">Either user name or password is wrong.</font></p>");
            out.println(status);
            request.getRequestDispatcher("index.html").include(request, response);
        }
        out.close();
    }

}
