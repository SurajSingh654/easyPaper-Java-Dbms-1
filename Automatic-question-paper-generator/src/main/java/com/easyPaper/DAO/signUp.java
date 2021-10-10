package com.easyPaper.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import com.easyPaper.Model.userModel;

import jakarta.servlet.ServletException;

public class signUp {
	public int registerUser(userModel user) throws ClassNotFoundException, ServletException {
		String INSERT_USERS_SQL = "INSERT INTO user_details"
				+ "  (fname, lname, email, password, address, city, pincode, state) VALUES "
				+ " (?, ?, ?, ?, ?, ?, ?, ?);";

		int result = 0;
		String jdbcURL = "jdbc:mysql://localhost:3306/easypaper";
        String dbUser = "root";
        String dbPassword = "Antiquity@12";
        Class.forName("com.mysql.jdbc.Driver");
		try (Connection connection = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);

				// Step 2:Create a statement using connection object
				PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {
			preparedStatement.setString(1, user.getFname());
			preparedStatement.setString(2, user.getLname());
			preparedStatement.setString(3, user.getEmail());
			preparedStatement.setString(4, user.getPassword());
			preparedStatement.setString(5, user.getAddress());
			preparedStatement.setString(6, user.getCity());
			preparedStatement.setInt(7, user.getPincode());
			preparedStatement.setString(8, user.getState());

			System.out.println(preparedStatement);
			// Step 3: Execute the query or update query
			result = preparedStatement.executeUpdate();

		} catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
		return result;
	}
}
