

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
		List<Integer> BfoodId = new ArrayList<Integer>();
		List<BoughtFood> listBought = (List<BoughtFood>) getServletContext().getAttribute("listBought");
		List<Users> listUsers = (List<Users>) getServletContext().getAttribute("listUsers");
		List<Food> listFood = (List<Food>) getServletContext().getAttribute("listFood");
		String UserOrdered = (String) getServletContext().getAttribute("UserOrdered");
		List<BFood> listBFood = new ArrayList<BFood>();
	    int food1 = 0;
	    int food2 = 0;
	    int food3 = 0;
		int food4 = 0;
		int food5 = 0;
		int food6 = 0;
		
		//DONE ------------------------FIND USER ID FOR ORDER-------------------
		System.out.println("Checking Order for : " + UserOrdered);
		int UserOrderedId=0;
		for (int i = 0; i < listUsers.size(); i++) {
			if (listUsers.get(i).getName().equals(UserOrdered)) {
				UserOrderedId = listUsers.get(i).getId();
			}
		}
		
		//DONE ------------------------FIND USER User Ordered Dish ID!-------------------
	
		for (int i = 0; i < listBought.size(); i ++ ) {
			
			if (UserOrderedId == listBought.get(i).getBuyerId() ) {
				BfoodId.add(listBought.get(i).getId());
				
			}
		}
		
		
		//DONE----------------------FIND AMOUNT DUPLICATE----------------
		for (int i = 0; i < BfoodId.size(); i++) {
			System.out.println(BfoodId.get(i));
			if (BfoodId.get(i) == 1) {
				food1++;
			}else if (BfoodId.get(i) == 2) {
				food2++;
			}else if (BfoodId.get(i) == 3) {
				food3++;
			}else if (BfoodId.get(i) == 4) {
				food4++;
			}else if (BfoodId.get(i) == 5) {
				food5++;
			}else if (BfoodId.get(i)== 6) {
				food6++;
			}
		}
		System.out.println("AFTERT:!:!:!:!");
		System.out.println("Metal Dish :  " + food1);
		System.out.println("lemon :  " + food2);
		System.out.println("Pizza :  " + food3);
		System.out.println("bun :  " + food4);
		
		
		
		//---------------------FIND Layable----------------------
		Set<Integer> nonDuplBfood = new HashSet<>();
		nonDuplBfood.addAll(BfoodId);
		BfoodId.clear();
		BfoodId.addAll(nonDuplBfood);
		System.out.println("BfoodSize: " + BfoodId.size());
		System.out.println("listFood: " + listFood.size());
		
		
		if (BfoodId.size()< listFood.size()) {
			for (int i = 0; i < BfoodId.size(); i ++) {
				//System.out.println("added BfoodId" + BfoodId.get(i));
				for ( int j = 0; j < listFood.size(); j ++) {
					if (BfoodId.get(i) == listFood.get(j).getId()) {
						int id = listFood.get(j).getId();
						if (id == 1) {
							listBFood.add(new BFood(listFood.get(i), food1));
						}else if (id == 2) {
							listBFood.add(new BFood(listFood.get(i), food2));
						}else if (id == 3) {
							listBFood.add(new BFood(listFood.get(i), food3));
						}else if (id == 4) {
							listBFood.add(new BFood(listFood.get(i), food4));
						}else if (id == 5) {
							listBFood.add(new BFood(listFood.get(i), food5));
						}else if (id == 6) {
							listBFood.add(new BFood(listFood.get(i), food6));
						}
						
						
						//System.out.println("User has bought : " + listFood.get(i).getName());
					}
				}
			}
		}else {
			for (int i = 0; i < listFood.size(); i ++) {
				//System.out.println("added BfoodId" + BfoodId.get(i));
				for ( int j = 0; j < BfoodId.size(); j ++) {
					if (BfoodId.get(i) == listFood.get(j).getId()) {
						int id = listFood.get(j).getId();
						if (id == 1) {
							listBFood.add(new BFood(listFood.get(i), food1));
						}else if (id == 2) {
							listBFood.add(new BFood(listFood.get(i), food2));
						}else if (id == 3) {
							listBFood.add(new BFood(listFood.get(i), food3));
						}else if (id == 4) {
							listBFood.add(new BFood(listFood.get(i), food4));
						}else if (id == 5) {
							listBFood.add(new BFood(listFood.get(i), food5));
						}else if (id == 6) {
							listBFood.add(new BFood(listFood.get(i), food6));
						}
						//System.out.println("User has bought : " + listFood.get(i).getName());
					}
				}
			}
		}
		 
		
		
		

		
		
		getServletContext().setAttribute("listBFood", listBFood);
		/*getServletContext().setAttribute("food1", food1);
		getServletContext().setAttribute("food2", food2);
		getServletContext().setAttribute("food3", food3);
		getServletContext().setAttribute("food4", food4);
		getServletContext().setAttribute("food5", food5);
		getServletContext().setAttribute("food6", food6);*/
	
		
		request.getRequestDispatcher("/WEB-INF/CheckResult.jsp").forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
