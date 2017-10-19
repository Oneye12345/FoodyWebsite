

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class FoodWeb
 */
@WebServlet("/FoodWeb")
public class FoodWeb extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public FoodWeb() {
        super();
    
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		List<Users> listUsers = (List<Users>) getServletContext().getAttribute("listUsers");
		List<Food> listFood = (List<Food>) getServletContext().getAttribute("listFood");
		//List<BoughtFood> listBought = (List<BoughtFood>) getServletContext().getAttribute("listBought");
		int currentFood = Integer.valueOf( request.getParameter( "id" ) );
		Food pickFood = null;
		for (int i = 0; i < listFood.size(); i++) {
			if (listFood.get(i).getId()== currentFood){
				pickFood = new Food(listFood.get(i).getId(), listFood.get(i).getName(), listFood.get(i).getImage(), listFood.get(i).getDescription(), listFood.get(i).getPrice(), listFood.get(i).isSize());
			}
		}
		
		System.out.println(pickFood.getName());
		getServletContext().setAttribute("pickFood", pickFood);
		request.getRequestDispatcher("/WEB-INF/FoodWeb.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Food pickFood = (Food) (getServletContext().getAttribute("pickFood"));
		double FoodSize = Double.valueOf( request.getParameter( "Size" ) ); 
		
		
		double tPrice = FoodSize + pickFood.getPrice();
		System.out.println("Size picked : " +tPrice);
		getServletContext().setAttribute("FoodSize", FoodSize);
	}

}
