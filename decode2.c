// decode2.c
// Homework Problem 3.58 decode2

#include <stdio.h>


//decode2(x,y,z)
 
//now lets get t1 = y – z.
//then cnompute t2 = x * t1.
//C=and then compute t3 = (t1 << 63) >> 63, 
//which is 0 if t1 ≥ 0, or −1 if t1 < 0.
//Finally, compute t4 = t2 XOR t3.
// This function returns t2 XOR t3, i.e. conditionally complement t2 when t1 is negative.

 
long decode2(long x, long y, long z) {
    long t1 = y - z;                 // t1 = y – z
    long t2 = x * t1;                // t2 = x * t1 
                                    // t2 = x * (y – z) = x * y – x * z
    long t3 = (t1 << 63) >> 63;      // t3 = sign‐mask of t1 (0 or −1)
    long t4 = t3 ^ t2;               // t4 = t2 XOR t3
    return t4;
}
// Main function to test decode2
int main(void) {
    // Example usage of decode2
    long x = 5, y = 2, z = 7;
    long result = decode2(x, y, z);
    printf("decode2(%ld, %ld, %ld) = %ld\n", x, y, z, result);
    return 0;
}