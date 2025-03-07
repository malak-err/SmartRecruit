package dao;

import models.User;
import java.sql.*;

public class UserDAO {
    private Connection connection;

    // Constructor to initialize the database connection
    public UserDAO() {
        try {
            // Load the MySQL JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish the database connection
            connection = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/smartrecruit", "root", "");

            // Check if the connection is successful
            if (connection == null) {
                throw new RuntimeException("Failed to establish a database connection.");
            }
            System.out.println("Database connection established successfully!"); // Debug statement
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException("Failed to initialize UserDAO", e);
        }
    }

    // Method to retrieve a user by ID (hardcoded to ID = 1 for now)
    public User getUser() {
        User user = null;
        String query = "SELECT * FROM users WHERE id = 1"; // Query to fetch user with ID = 1
        try (PreparedStatement stmt = connection.prepareStatement(query)) {
            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    user = new User();
                    user.setId(rs.getInt("id"));
                    user.setUsername(rs.getString("username"));
                    user.setPassword(rs.getString("password"));
                    user.setRole(rs.getString("role"));
                    System.out.println("User found: " + user.getUsername()); // Debug statement
                } else {
                    System.out.println("No user found with id = 1"); // Debug statement
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return user;
    }

    // Method to close the database connection
    public void close() {
        if (connection != null) {
            try {
                connection.close();
                System.out.println("Database connection closed successfully!"); // Debug statement
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}