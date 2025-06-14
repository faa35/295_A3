#include <stdio.h>

// Function decode2: Computes (x * (y - z)) XOR (sign bit of (y - z))
// Parameters: x (first), y (second), z (third)
// Returns: Result as a long integer
long decode2(long x, long y, long z) {
    long diff = y - z;           // Compute y - z
    long prod = x * diff;        // Compute x * (y - z)
    long sign = diff >> 63;      // Get sign bit: -1 if negative, 0 if non-negative
    return prod ^ sign;          // XOR the product with the sign bit
}

// Main function to test decode2
int main() {
    // Test cases
    long x = 10, y = 5, z = 3;
    long result = decode2(x, y, z);
    printf("decode2(%ld, %ld, %ld) = %ld\n", x, y, z, result);

    x = 10; y = 3; z = 5;
    result = decode2(x, y, z);
    printf("decode2(%ld, %ld, %ld) = %ld\n", x, y, z, result);

    return 0;
}