package com.easyPaper.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import com.easyPaper.Model.paperModel;

import jakarta.servlet.ServletException;

public class addpaperDAO {
	public int registerPaper(paperModel user) throws ClassNotFoundException, ServletException {
		String INSERT_USERS_SQL = "INSERT INTO add_paper" + "  (pname, pdescription,pclass, user_id) VALUES "
				+ " (?, ?, ?, ?);";

		int result = 0;
		String jdbcURL = "jdbc:mysql://localhost:3306/easypaper";
		String dbUser = "root";
		String dbPassword = "Antiquity@12";
		Class.forName("com.mysql.jdbc.Driver");
		try (Connection connection = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);

				// Step 2:Create a statement using connection object
				PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {
			preparedStatement.setString(1, user.getPname());
			preparedStatement.setString(2, user.getPclass());
			preparedStatement.setString(3, user.getPdescription());
			preparedStatement.setInt(4, user.getUser_id());

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
