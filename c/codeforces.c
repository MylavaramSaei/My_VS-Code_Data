#include <stdio.h>

#define MAXN 200005

int a[MAXN], b[MAXN];

long long compute_prefix_min_sum(int arr[], int n) {
    int min_val = arr[0];
    long long sum = min_val;
    for (int i = 1; i < n; ++i) {
        if (arr[i] < min_val) {
            min_val = arr[i];
        }
        sum += min_val;
    }
    return sum;
}

int main() {
    int t;
    scanf("%d", &t);
    
    while (t--) {
        int n;
        scanf("%d", &n);
        
        for (int i = 0; i < n; ++i) {
            scanf("%d", &a[i]);
        }

        // Case 1: No operation
        long long min_sum = compute_prefix_min_sum(a, n);

        // Case 2: Try best single operation: a[0] += max(a[1..n-1]), a[j] = 0
        if (n > 1) {
            int max_val = a[1];
            int max_idx = 1;
            for (int i = 2; i < n; ++i) {
                if (a[i] > max_val) {
                    max_val = a[i];
                    max_idx = i;
                }
            }

            // Apply operation on copy of array
            for (int i = 0; i < n; ++i) {
                b[i] = a[i];
            }
            b[0] += b[max_idx];
            b[max_idx] = 0;

            long long new_sum = compute_prefix_min_sum(b, n);
            if (new_sum < min_sum) {
                min_sum = new_sum;
            }
        }

        printf("%lld\n", min_sum);
    }

    return 0;
}
