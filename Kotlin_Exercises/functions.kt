fun main(){

    // Function to sort an array of integers in ascending order using Bubble Sort
    fun bubbleSort(arr: Array<Int>) {
        val n = arr.size
        for (i in 0 until n - 1) {
            for (j in 0 until n - i - 1) {
                if (arr[j] > arr[j + 1]) {
                    // Swap arr[j] and arr[j + 1]
                    val temp = arr[j]
                    arr[j] = arr[j + 1]
                    arr[j + 1] = temp
                }
            }
        }
    }


    val numbers = arrayOf(42, 25, 17, 59, 23, 8, 33)
    println("Before sorting: ${numbers.joinToString(", ")}")

    bubbleSort(numbers)

    println("After sorting: ${numbers.joinToString(", ")}")

    
    fun factorial(n: Int): Int{
        if (n<1){
            return 1
        }

        return n * factorial(n-1)

    }

    val n:Int = 5
    var fact = factorial(5)
    println("factorial of $n is $fact")


    // Function to check if a string contains only unique characters
    fun hasUniqueCharacters(str: String): Boolean {
        val charSet = mutableSetOf<Char>()
        for (char in str) {
            if (char in charSet) {
                return false
            }
            charSet.add(char)
        }
        return true
    }

    val testString1 = "abcdef"
    val testString2 = "hello"
    val testString3 = "123456"
    val testString4 = "123451"

    println("Does '$testString1' have all unique characters? ${hasUniqueCharacters(testString1)}")
    println("Does '$testString2' have all unique characters? ${hasUniqueCharacters(testString2)}")
    println("Does '$testString3' have all unique characters? ${hasUniqueCharacters(testString3)}")
    println("Does '$testString4' have all unique characters? ${hasUniqueCharacters(testString4)}")

}