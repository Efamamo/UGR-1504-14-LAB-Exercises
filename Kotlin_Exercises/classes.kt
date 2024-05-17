class Rectangle(val length: Double, val width: Double) {

    fun perimeter(): Double {
        return 2 * (length + width)
    }

    fun area(): Double {
        return length * width
    }
}
class Triangle(val side1: Double, val side2: Double, val side3: Double) {

    fun type(): String {
        return when {
            side1 == side2 && side2 == side3 -> "Equilateral"
            side1 == side2 || side2 == side3 || side1 == side3 -> "Isosceles"
            else -> "Scalene"
        }
    }
}

class ShoppingCart {

    private val items = mutableListOf<Pair<String, Double>>()

    
    fun addItem(name: String, price: Double) {
        items.add(Pair(name, price))
    }

   
    fun removeItem(name: String): Boolean {
        val item = items.find { it.first == name }
        return if (item != null) {
            items.remove(item)
            true
        } else {
            false
        }
    }

  
    fun totalPrice(): Double {
        return items.sumOf { it.second }
    }

    
    fun listItems() {
        if (items.isEmpty()) {
            println("The shopping cart is empty.")
        } else {
            println("Items in the shopping cart:")
            for (item in items) {
                println("- ${item.first}: $${item.second}")
            }
        }
    }
}






fun main() {
    val rectangle = Rectangle(5.0, 3.0)
    println("Rectangle - Length: ${rectangle.length}, Width: ${rectangle.width}")
    println("Perimeter: ${rectangle.perimeter()}")
    println("Area: ${rectangle.area()}")


    val triangle = Triangle(3.0, 3.0, 3.0)
    println("Triangle - Sides: ${triangle.side1}, ${triangle.side2}, ${triangle.side3}")
    println("Type: ${triangle.type()}")


    val cart = ShoppingCart()
    cart.addItem("Apple", 0.99)
    cart.addItem("Banana", 1.29)
    cart.addItem("Milk", 2.49)
    cart.listItems()
    println("Total Price: $${cart.totalPrice()}")

    cart.removeItem("Banana")
    cart.listItems()
    println("Total Price after removing Banana: $${cart.totalPrice()}")


}
