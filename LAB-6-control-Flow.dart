void main() {
  int grade = 85;

  String letterGrade;

  switch (grade ~/ 10) {
    case 10:
    case 9:
      letterGrade = "A";
      break;
    case 8:
      letterGrade = "B";
      break;
    case 7:
      letterGrade = "C";
      break;
    case 6:
      letterGrade = "D";
      break;
    default:
      letterGrade = "F";
      break;
  }

  print("Grade: $grade");
  print("Letter Grade: $letterGrade");
}