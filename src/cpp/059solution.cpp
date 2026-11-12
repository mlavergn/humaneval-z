int largest_prime_factor(int n){
    for (int i=2;i*i<=n;i++)
    while (n%i==0 and n>i)  n=n/i;
    return n;
}
