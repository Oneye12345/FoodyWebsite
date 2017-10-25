
public class BoughtFood {
	int Id;
	int buyerId;
	public BoughtFood(int Id, int buyerId) {
		this.Id = Id;
		this.buyerId = buyerId;
	}
	public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
	}
	public int getBuyerId() {
		return buyerId;
	}
	public void setBuyerId(int buyerId) {
		this.buyerId = buyerId;
	}
	public String toString() {
		String output = this.Id + " " + this.buyerId;
		return output;
	}
}
