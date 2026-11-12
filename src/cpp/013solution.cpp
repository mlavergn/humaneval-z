int greatest_common_divisor(int a, int b){
    int out,m;
    while (true){
        if (a<b) 
        {
            m=a;a=b;b=m;
        }
        a=a%b;
        if (a==0) return b;
    }
}
