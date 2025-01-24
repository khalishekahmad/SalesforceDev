public class MyCustomClass {
    public String name;
    public Integer age;
    
    // Constructor
    public MyCustomClass(String name, Integer age) {
        this.name = name;
        this.age = age;
    }
    
    // Method
    public void displayInfo() {
        system.debug('Name: ' + name + ', Age: ' + age);
    }
}