class Person {
  String name;
  int age;
  String address;

  Person(this.name, this.age, this.address);
}

void main() {
 
  Person p1 = Person("feven", 22, "123 Street, City");

  print("Initial Details:");
  print("Name: ${p1.name}");
  print("Age: ${p1.age}");
  print("Address: ${p1.address}");

  p1.age = 31;
  p1.address = "456 Avenue, Town";

 
  print("\nModified Details:");
  print("Name: ${p1.name}");
  print("Age: ${p1.age}");
  print("Address: ${p1.address}");
}