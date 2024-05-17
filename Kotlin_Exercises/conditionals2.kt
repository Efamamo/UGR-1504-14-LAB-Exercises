fun main(){
        // Function to determine the season based on month and day
    fun determineSeason(month: Int, day: Int): String {
        return when (month) {
            1, 2 -> "Winter"
            3 -> if (day < 20) "Winter" else "Spring"
            4, 5 -> "Spring"
            6 -> if (day < 21) "Spring" else "Summer"
            7, 8 -> "Summer"
            9 -> if (day < 23) "Summer" else "Fall"
            10, 11 -> "Fall"
            12 -> if (day < 21) "Fall" else "Winter"
            else -> "Invalid month"
        }
    }

    val month = 5
    val day = 15

    val season = determineSeason(month, day)

    println("The season on $month/$day is $season.")


    // Function to find the largest number using nested conditionals
    fun findLargest(a: Int, b: Int, c: Int): Int {
        return if (a > b) {
            if (a > c) {
                a
            } else {
                c
            }
        } else {
            if (b > c) {
                b
            } else {
                c
            }
        }
    }

    val num1 = 10
    val num2 = 20
    val num3 = 37

    val largest = findLargest(num1, num2, num3)
    println("The largest number among $num1, $num2, and $num3 is $largest.")
}