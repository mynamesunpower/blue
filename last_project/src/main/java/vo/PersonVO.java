package main.java.vo;

public class PersonVO {
	
	private String id;
	private String name;
	private int age;
	
	public PersonVO(String name, int age) {
		this.name = name;
		this.age = age;
	}
	
	public void SetId(String id) {
		this.id = id;
	}
	
	public String getId() {
		return id;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public String getName() {
		return name;
	}
	
	public void setAge(int age) {
		this.age = age;
	}
	
	public int getAge() {
		return age;
	}
	
	@Override
	public String toString() {
		return "Person [id=" + id + ", name=" + name + ", age=" + age + "]";
	}
}