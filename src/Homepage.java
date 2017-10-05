import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
/**
 * Servlet implementation class Homepage
 */
@WebServlet("/Homepage")
public class Homepage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Homepage() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		List<Food> listFood = new ArrayList<Food>();
		List<Users> listUsers = new ArrayList<Users>();
		List<BoughtFood> listBought = new ArrayList<BoughtFood>();
		
		//-------------------------------------ListFood------------------------------------
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
			Statement stmt = c.createStatement();
			ResultSet rs = stmt.executeQuery("SELECT * from Food;");

			while (rs.next()) {
				listFood.add(new Food(rs.getInt("Id"), rs.getString("Name"), rs.getString("Image"), rs.getString("Description"), rs.getString("price")));
			}

			c.close();
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
		
		
		//-----------------------------------ListUsers------------------------------------
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			throw new ServletException(e);
		}

		Connection c1 = null;
		try {
			String url = "jdbc:mysql://cs3.calstatela.edu/cs3337stu05";
			String username = "cs3337stu05";
			String password = "Q2qg8x!l";
			c1 = DriverManager.getConnection(url, username, password);
			Statement stmt = c1.createStatement();
			ResultSet rs = stmt.executeQuery("SELECT * from Users;");

			while (rs.next()) {
				listUsers.add(new Users(rs.getInt("Id"), rs.getString("Name")));
			}

			c1.close();
		} catch (SQLException e) {
			throw new ServletException(e);
		} finally {
			try {
				if (c1 != null)
					c1.close();
			} catch (SQLException e) {
				throw new ServletException(e);
			}
		}
		
		
		//------------------------------List Bought------------------------------------
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			throw new ServletException(e);
		}

		Connection c2 = null;
		try {
			String url = "jdbc:mysql://cs3.calstatela.edu/cs3337stu05";
			String username = "cs3337stu05";
			String password = "Q2qg8x!l";
			c2 = DriverManager.getConnection(url, username, password);
			Statement stmt = c2.createStatement();
			ResultSet rs = stmt.executeQuery("SELECT * from boughtFood;");

			while (rs.next()) {
				listBought.add(new BoughtFood(rs.getInt("Id"), rs.getInt("userId")));
			}

			c2.close();
		} catch (SQLException e) {
			throw new ServletException(e);
		} finally {
			try {
				if (c2 != null)
					c2.close();
			} catch (SQLException e) {
				throw new ServletException(e);
			}
		}
		
		
		//---------------------------Testing Database Grabbing------------------------------------------
		/*for (int i = 0; i< listFood.size(); i ++) {
			System.out.println(listFood.get(i).toString());
		}
		for (int i = 0; i< listUsers.size(); i ++) {
			System.out.println(listUsers.get(i).toString());
		}
		for (int i = 0; i < listBought.size(); i ++) {
			System.out.println(listBought.get(i).toString());
		}*/
			
			
		//----------------------------------------------------------------------------------------------
			
		
		getServletContext().setAttribute("listFood", listFood);
		getServletContext().setAttribute("listUsers", listUsers);
		getServletContext().setAttribute("listBought", listBought);
		request.getRequestDispatcher("/WEB-INF/Homepage.jsp").forward(request, response);

	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
