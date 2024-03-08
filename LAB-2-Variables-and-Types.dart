const int speedOfLight = 299792458;

void main() {
  print("Enter the distance in meters:");
  int distance = int.parse(stdin.readLineSync()!);

  double time = distance / speedOfLight;
  print("The time it takes for light to travel $distance meters is approximately $time seconds.");
}