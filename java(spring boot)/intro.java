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

// --- Calculator Program ---
import java.util.Scanner;
public class Calculator {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter operator (+, -, *, /): ");
        char op = sc.next().charAt(0);
        System.out.print("Enter two numbers: ");
        double a = sc.nextDouble(), b = sc.nextDouble();
        switch(op) {
            case '+': System.out.println(a + b); break;
            case '-': System.out.println(a - b); break;
            case '*': System.out.println(a * b); break;
            case '/': System.out.println(b != 0 ? a / b : "Cannot divide by zero"); break;
            default: System.out.println("Invalid operator");
        }
    }
}
