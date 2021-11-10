package com.easyPaper.DAO;

import java.sql.*;

import com.easyPaper.Model.userModel;
import com.mysql.cj.exceptions.RSAException;

public class userDAO {

	public userModel checkLogin(String email, String password) throws SQLException, ClassNotFoundException {
		String jdbcURL = "jdbc:mysql://localhost:3306/easypaper";
		String dbUser = "root";
		String dbPassword = "Antiquity@12";

		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);
		String sql = "SELECT * FROM user_details WHERE email = ? and password = ?";
		PreparedStatement statement = con.prepareStatement(sql);
		statement.setString(1, email);
		statement.setString(2, password);

		ResultSet result = statement.executeQuery();

		userModel login = null;

		if (result.next()) {
			login = new userModel();
			login.setEmail(email);
			login.setPassword(password);
			login.setUser_id(Integer.parseInt(result.getString("user_id")));
		}

		con.close();

		return login;
	}
}
