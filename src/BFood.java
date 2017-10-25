import java.util.List;

public class BFood {
  Food foods;
  int amount;
  public BFood(Food foods , int amount) {
	  this.foods = foods;
	  this.amount = amount;
  }
public Food getFoods() {
	return foods;
}
public void setFoods(Food foods) {
	this.foods = foods;
}
public int getAmount() {
	return amount;
}
public void setAmount(int amount) {
	this.amount = amount;
}
public String toString() {
	String output = foods.toString() + amount;
	return output;
}
}