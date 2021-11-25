package superConstructor;

public class Person {
	private String name;
	
	public Person(String name) {
		System.out.println("Person 생성자");
		this.name = name;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return name;
	}	
}
