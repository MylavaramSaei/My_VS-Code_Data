fun main() { val a = 5; val b = 3; println("Difference = ${a - b}") }

// --- Multiplication Table (1 to 100) ---
fun main() {
    for (i in 1..100) {
        println("Table of $i:")
        for (j in 1..10) {
            println("$i x $j = ${i * j}")
        }
        println()
    }
}
