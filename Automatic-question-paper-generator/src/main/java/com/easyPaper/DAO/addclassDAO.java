package com.easyPaper.DAO;



	import java.sql.Connection;
	import java.sql.DriverManager;
	import java.sql.PreparedStatement;
	import java.sql.SQLException;

    import com.easyPaper.Model.classModel;
    import com.easyPaper.Model.userModel;

	import jakarta.servlet.ServletException;

	public class addclassDAO {
		public int registerClass(classModel user) throws ClassNotFoundException, ServletException {
			String INSERT_USERS_SQL = "INSERT INTO add_class"
					+ "  (class_id, cname, cdescription, user_id) VALUES "
					+ " (?, ?, ?, ?);";

			int result = 0;
			String jdbcURL = "jdbc:mysql://localhost:3306/easypaper";
	        String dbUser = "root";
	        String dbPassword = "Antiquity@12";

			try (Connection connection = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);

					// Step 2:Create a statement using connection object
					PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {
				preparedStatement.setInt(1, 2);
				preparedStatement.setString(2, user.getCname());
				preparedStatement.setString(3, user.getCdescription());
				preparedStatement.setInt(4, user.getUser_id());

				System.out.println(preparedStatement);
				// Step 3: Execute the query or update query
				result = preparedStatement.executeUpdate();

			} catch (SQLException | ClassNotFoundException ex) {
				throw new ServletException(ex);
			}
			return result;
		}

	}

}
