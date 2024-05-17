fun main(){
    // Function that adds all even numbers from 1 to 50
    fun evenSum(): Int{
        var total: Int = 0
        for (i in 1..50){
            if (i%2 == 0){
                total = total + i
            }   
        }

        return total
        }
    
    var totalSum = evenSum()
    println("Sum of all even numbers from 1 to 50 is $totalSum")
     // Function to check if a number is prime
     fun isPrime(num: Int): Boolean {
        if (num <= 1) return false
        var i = 2
        while (i * i <= num) {
            if (num % i == 0) return false
            i++
        }
        return true
    }

    // Function to find prime numbers within a given range
    fun findPrimesInRange(start: Int, end: Int): List<Int> {
        val primes = mutableListOf<Int>()
        var num = start
        while (num <= end) {
            if (isPrime(num)) {
                primes.add(num)
            }
            num++
        }
        return primes
    }


    val start = 10
    val end = 50

    val primes = findPrimesInRange(start, end)
    println("Prime numbers between $start and $end: ${primes.joinToString(", ")}")


    // Function to check if a number is a palindrome
    fun isPalindrome(num: Int): Boolean {
        var originalNum = num
        var reversedNum = 0
        var remainder: Int

        while (originalNum != 0) {
            remainder = originalNum % 10
            reversedNum = reversedNum * 10 + remainder
            originalNum /= 10
        }
        return num == reversedNum
    }

    val number = 12321
    val result = isPalindrome(number)

    if (result) {
        println("$number is a palindrome.")
    } else {
        println("$number is not a palindrome.")
    }

    
}