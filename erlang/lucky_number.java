import java.util.Scanner;
public class LuckyNumber {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int n = sc.nextInt(), sum = 0;
        while(n != 0) { sum += n % 10; n /= 10; }
        System.out.println((sum % 9 == 0) ? "🎉 Lucky!" : "❌ Not lucky.");
    }
}
