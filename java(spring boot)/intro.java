public class Hello {
    public static void main(String[] args) {
        int a = 5, b = 3;
        System.out.println("Difference = " + (a - b));
    }
}

// --- Multiplication Table (1 to 100) ---
public class Multiply {
    public static void main(String[] args) {
        for(int i = 1; i <= 100; i++) {
            System.out.println("Table of " + i + ":");
            for(int j = 1; j <= 10; j++) {
                System.out.println(i + " x " + j + " = " + (i * j));
            }
            System.out.println();
        }
    }
}
