
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CheckOut")
public class CheckOut extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public CheckOut() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		Food pickFood = (Food) (getServletContext().getAttribute("pickFood")); // User's Picked Food
		double FoodSize = Double.valueOf(request.getParameter("Size")); // $ for Food Size
		double tPrice = FoodSize + pickFood.getPrice(); // Price of Foodsize + User's food.
		// System.out.println("Size picked : " +tPrice);
		getServletContext().setAttribute("tPrice", tPrice);
		getServletContext().setAttribute("pickFood", pickFood);
		getServletContext().setAttribute("FoodSize", FoodSize);
		request.getRequestDispatcher("/WEB-INF/CheckOut.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		Food pickFood = (Food) (getServletContext().getAttribute("pickFood"));// selected Food
		double FoodSize = 0;
		FoodSize = (double) (getServletContext().getAttribute("FoodSize")); // Checking if Food is large or regular. 2
		boolean isNormal;
		if (FoodSize == 0) {
			isNormal = true;
		}else {
			isNormal = false;
		}
		//System.out.println(pickFood.getId());											// for Large, 0 for Regular
		String address = String.valueOf(request.getParameter("Address")); // New address
		String name = String.valueOf(request.getParameter("fName"));// New User name;
		List<Users> listUsers = (List<Users>) getServletContext().getAttribute("listUsers");
		// Checking if User already Exist
		int nextUserID = listUsers.size() + 1;// Add next ID
		for (int i = 0; i < listUsers.size(); i++) {
			if (listUsers.get(i).getName().equals(name)) {
				nextUserID = listUsers.get(i).getId();
				// System.out.println(listUsers.get(i).getId());
			}
		}
		
		
		//adding new users
		if (nextUserID == listUsers.size() + 1) {
			try {
				Class.forName("com.mysql.jdbc.Driver");
			} catch (ClassNotFoundException e) {
				throw new ServletException(e);
			}

			Connection c = null;
			try {
				String url = "jdbc:mysql://cs3.calstatela.edu/cs3337stu05";
				String username = "cs3337stu05";
				String password = "Q2qg8x!l";

				c = DriverManager.getConnection(url, username, password);

				PreparedStatement stmt = c.prepareStatement("insert into Users values(?,?,?)");
				stmt.setInt(1, nextUserID);
				stmt.setString(2, name);
				stmt.setString(3, address);

				stmt.executeUpdate();
			} catch (SQLException e) {
				throw new ServletException(e);
			} finally {
				try {
					if (c != null)
						c.close();
				} catch (SQLException e) {
					throw new ServletException(e);
				}
			}
		}
		
		
		
		//adding the food user ordered
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			throw new ServletException(e);
		}

		Connection s = null;
		try {
			String url = "jdbc:mysql://cs3.calstatela.edu/cs3337stu05";
			String username = "cs3337stu05";
			String password = "Q2qg8x!l";

			s = DriverManager.getConnection(url, username, password);

			PreparedStatement stmt = s.prepareStatement("insert into boughtFood values(?,?,?)");
			stmt.setInt(1, nextUserID);
			stmt.setInt(2, pickFood.getId());
			stmt.setBoolean(3, isNormal);

			stmt.executeUpdate();
		} catch (SQLException e) {
			throw new ServletException(e);
		} finally {
			try {
				if (s != null)
					s.close();
			} catch (SQLException e) {
				throw new ServletException(e);
			}
		}
		
		

		
		response.sendRedirect("Homepage");
	}

}
