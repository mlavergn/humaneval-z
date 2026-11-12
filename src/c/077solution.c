bool iscube(long long a) {
    long long abs = llabs(a);
    long long root = llround(cbrt((double)abs));
    return root * root * root == abs;
}
