def is_lucky(num):
    return sum(map(int, str(num))) % 9 == 0

n = int(input("Enter a number: "))
print("🎉 Lucky!" if is_lucky(n) else "❌ Not lucky.")
