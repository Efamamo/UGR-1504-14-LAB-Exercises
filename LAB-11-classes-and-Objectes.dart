class Person {
  String name;
  int age;
  String address;

  Person(this.name, this.age, this.address);
}

class Student extends Person {
  int rollNumber;
  List<int> marks;

  Student(String name, int age, String address, this.rollNumber, this.marks)
      : super(name, age, address);

  int calculateTotalMarks() {
    int total = marks.reduce((value, element) => value + element);
    return total;
  }

  double calculateAverageMarks() {
    double average = marks.reduce((value, element) => value + element) / marks.length;
    return average;
  }
}

void main() {
  
  Student s1 = Student("abush", 20, "777 Road, Village", 101, [85, 90, 95, 88, 92]);

 
  print("Student Details:");
  print("Name: ${s1.name}");
  print("Age: ${s1.age}");
  print("Address: ${s1.address}");
  print("Roll Number: ${s1.rollNumber}");
  print("Marks: ${s1.marks}");

  
  print("\nTotal Marks: ${s1.calculateTotalMarks()}");
  print("Average Marks: ${s1.calculateAverageMarks()}");
}