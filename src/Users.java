
public class Users {
	int Id;
	String Name;
	
	public Users(int Id, String Name){	
		this.Id= Id;
		this.Name = Name;
			
	}

	public int getId() {
		return Id;
	}

	public void setId(int id) {
		Id = id;
	}

	public String getName() {
		return Name;
	}

	public void setName(String name) {
		Name = name;
	}
	public String toString(){
		return Id  + " " + Name;
	}
}
