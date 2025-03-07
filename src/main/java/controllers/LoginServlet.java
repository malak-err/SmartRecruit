package controllers;

import dao.UserDAO;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import models.User;

import java.io.IOException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    private UserDAO userDAO;

    // Initialize the UserDAO object
    @Override
    public void init() {
        userDAO = new UserDAO();
    }

    // Handle GET requests (display the login page)
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("login.jsp").forward(request, response);
    }

    // Handle POST requests (process login form submission)
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // Retrieve the admin user from the database
        User admin = userDAO.getUser();

        // Validate the username and password
        if (admin != null && admin.getUsername().equals(username) && admin.getPassword().equals(password)) {
            // Create a session and set attributes
            HttpSession session = request.getSession(true);
            session.setAttribute("username", username);
            session.setAttribute("password", password);
            response.sendRedirect("index.jsp"); // Redirect to the index page
        } else {
            // Set an error message and forward back to the login page
            request.setAttribute("errorMessage", "Nom d'utilisateur ou mot de passe incorrect");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }

    // Clean up resources when the servlet is destroyed
    @Override
    public void destroy() {
        if (userDAO != null) {
            userDAO.close();
        }
    }
}