import java.util.Date;
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
		boolean isEmptyAlert = true;
		Food pickFood = (Food) (getServletContext().getAttribute("pickFood")); // User's Picked Food
		double FoodSize = Double.valueOf(request.getParameter("Size")); // $ for Food Size
		double tPrice = FoodSize + pickFood.getPrice(); // Price of Foodsize + User's food.
		// System.out.println("Size picked : " +tPrice);
		getServletContext().setAttribute("tPrice", tPrice);
		getServletContext().setAttribute("pickFood", pickFood);
		getServletContext().setAttribute("FoodSize", FoodSize);
		getServletContext().setAttribute("isEmptyAlert", isEmptyAlert);
		request.getRequestDispatcher("/WEB-INF/CheckOut.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		boolean isEmptyAlert = true;
		Food pickFood = (Food) (getServletContext().getAttribute("pickFood"));// selected Food
		double FoodSize = 0;
		FoodSize = (double) (getServletContext().getAttribute("FoodSize")); // Checking if Food is large or regular. 2
		boolean isNormal;
		if (FoodSize == 0) {
			isNormal = true;
		}else {
			isNormal = false;
		}
	
		// System.out.println(pickFood.getId()); // for Large, 0 for Regular
		String PaymentInformation = String.valueOf(request.getParameter("PaymentInformation"));
		String CreditCardNumber = String.valueOf(request.getParameter("CreditCardNumber"));
		String CardSecurityCode = String.valueOf(request.getParameter("CardSecurityCode"));				String address = String.valueOf(request.getParameter("Address")); // New address
		String name = String.valueOf(request.getParameter("fName"));// New User name;
		Date date = new Date();
		String orderedDate = date.toString();
		getServletContext().setAttribute("orderedDate", orderedDate);
		getServletContext().setAttribute("personName", name);
		getServletContext().setAttribute("address", address);
		List<Users> listUsers = (List<Users>) getServletContext().getAttribute("listUsers");

		// Checking if User already Exist
		int nextUserID = listUsers.size() + 1;// Add next ID
		for (int i = 0; i < listUsers.size(); i++) {
			if (listUsers.get(i).getName().equals(name)) {
				nextUserID = listUsers.get(i).getId();
				// System.out.println(listUsers.get(i).getId());
			}
		}
		
		// Only add and Redirect if all blanks are Filled out.
				boolean isAddressEmpty = true;
				boolean isNameEmpty = true;
				boolean isCardSecurityCodeEmpty = true;
				boolean isCreditCardNumberEmpty = true;
				boolean isPaymentInformationEmpty = true;
				if (!address.equals("")) {
					isAddressEmpty = false;
				}
				if (!name.equals("")) {
					isNameEmpty = false;
				}
				if (!PaymentInformation.equals("")) {
					isPaymentInformationEmpty = false;
				}
				if (!CreditCardNumber.equals("")) {
					isCreditCardNumberEmpty = false;
				}
				if (!CardSecurityCode.equals("")) {
					isCardSecurityCodeEmpty = false;
				}
		//add users IF all blanks are fille out
				if (isAddressEmpty == false) {
					if (isNameEmpty == false) {
						if (isPaymentInformationEmpty == false) {
							if (isCreditCardNumberEmpty == false) {
								if (isCardSecurityCodeEmpty == false) {
									System.out.println("ALL ARE FILLED OUT");
									isEmptyAlert = true;
									getServletContext().setAttribute("isEmptyAlert", isEmptyAlert);
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
									
									
									response.sendRedirect("ConfirmOrder");
									
									
								}else {
									 isEmptyAlert = false;
									    getServletContext().setAttribute("isEmptyAlert", isEmptyAlert);
										request.getRequestDispatcher("/WEB-INF/CheckOut.jsp").forward(request, response);
								}
							}else {
								 isEmptyAlert = false;
								    getServletContext().setAttribute("isEmptyAlert", isEmptyAlert);
									request.getRequestDispatcher("/WEB-INF/CheckOut.jsp").forward(request, response);
							}
						}else {
							 isEmptyAlert = false;
							    getServletContext().setAttribute("isEmptyAlert", isEmptyAlert);
								request.getRequestDispatcher("/WEB-INF/CheckOut.jsp").forward(request, response);
						}
					}else {
						 isEmptyAlert = false;
						    getServletContext().setAttribute("isEmptyAlert", isEmptyAlert);
							request.getRequestDispatcher("/WEB-INF/CheckOut.jsp").forward(request, response);
					}
				}else {
					 isEmptyAlert = false;
					    getServletContext().setAttribute("isEmptyAlert", isEmptyAlert);
						request.getRequestDispatcher("/WEB-INF/CheckOut.jsp").forward(request, response);
				}
				
				
				
		//adding new users
	
   
   
	}

}