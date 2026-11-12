bool iscuber(int a){
    for (int i=0;i*i*i<=abs(a);i++)
        if (i*i*i==abs(a)) return true;
    return false;
}
