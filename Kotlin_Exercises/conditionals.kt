fun main() {

    // Function that determine triangle type
    fun determineTriangleType(a: Double, b: Double, c: Double): String {
        return when {
            a == b && b == c -> "Equilateral"
            a == b || b == c || a == c -> "Isosceles"
            else -> "Scalene"
        }
    }


    val side1 = 4.0
    val side2 = 5.0
    val side3 = 5.0

    val triangleType = determineTriangleType(side1, side2, side3)

    println("The triangle with sides $side1, $side2, and $side3 is $triangleType.")


    // Function that calculate Total Salary
    fun calculateTotalSalary(hoursWorked: Double, hourlyRate: Double): Double {
        val regularHours = 40.0
        val overtimeMultiplier = 1.5

        return if (hoursWorked <= regularHours) {
            hoursWorked * hourlyRate
        } else {
            val overtimeHours = hoursWorked - regularHours
            (regularHours * hourlyRate) + (overtimeHours * hourlyRate * overtimeMultiplier)
        }
    }


    val hoursWorked = 45.0
    val hourlyRate = 20.0
    val totalSalary = calculateTotalSalary(hoursWorked, hourlyRate)


    println("Total Salary for $hoursWorked hours at an hourly rate of $$hourlyRate is $$totalSalary.")

    
   
    

}
