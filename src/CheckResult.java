

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CheckResult
 */
@WebServlet("/CheckResult")
public class CheckResult extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public CheckResult() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<BoughtFood> listBought = (List<BoughtFood>) getServletContext().getAttribute("listBought");
		List<Users> listUsers = (List<Users>) getServletContext().getAttribute("listUsers");
		List<Food> listFood = (List<Food>) getServletContext().getAttribute("listFood");
		String UserOrdered = (String) getServletContext().getAttribute("UserOrdered");
		List<BFood> listBFood = new ArrayList<BFood>();
		int id=0;
		int buyerId=0;
		//System.out.println(str);
		for(int i=0;i<listUsers.size();i++) {
			if(listUsers.get(i).getName().equals(UserOrdered)) {
				for(int j=0;j<listBought.size();j++) {
					if(listBought.get(j).getBuyerId()==listUsers.get(i).getId()) {
						System.out.println("BuyerId:"+listBought.get(j).getId());
					}

				}



			}//End of second for loop
		}//End of first for loop
		request.getRequestDispatcher("/WEB-INF/CheckResult.jsp").forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
