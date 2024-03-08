void main() {
  Map<String, int> studentMarks = {};

  // Add entries to the map using putIfAbsent method
  studentMarks.putIfAbsent('John', () => 85);
  studentMarks.putIfAbsent('Alice', () => 92);
  studentMarks.putIfAbsent('Bob', () => 78);
  studentMarks.putIfAbsent('Jane', () => 90);

  // Iterate over the map using forEach method
  studentMarks.forEach((name, marks) {
    print('$name scored $marks marks');
  });

  // Check if a key exists in the map using containsKey method
  String studentName = 'Alice';
  if (studentMarks.containsKey(studentName)) {
    int marks = studentMarks[studentName];
    print('$studentName exists with $marks marks');
  } else {
    print('$studentName does not exist in the map');
  }
}