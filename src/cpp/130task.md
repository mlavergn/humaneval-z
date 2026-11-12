## task_id

```
CPP/130
```

## prompt

```cpp
/*
Everyone knows Fibonacci sequence, it was studied deeply by mathematicians in 
the last couple centuries. However, what people don't know is Tribonacci sequence.
Tribonacci sequence is defined by the recurrence:
tri(1) = 3
tri(n) = 1 + n / 2, if n is even.
tri(n) =  tri(n - 1) + tri(n - 2) + tri(n + 1), if n is odd.
For example:
tri(2) = 1 + (2 / 2) = 2
tri(4) = 3
tri(3) = tri(2) + tri(1) + tri(4)
       = 2 + 3 + 3 = 8 
You are given a non-negative integer number n, you have to a return a vector of the 
first n + 1 numbers of the Tribonacci sequence.
Examples:
tri(3) = {1, 3, 2, 8}
*/
#include<stdio.h>
#include<vector>
using namespace std;
vector<int> tri(int n){
```

## declaration

```cpp
#include<stdio.h>
#include<math.h>
#include<vector>
#include<algorithm>
using namespace std;
#include<stdlib.h>
vector<int> tri(int n){
```

## example_test

```cpp
#undef NDEBUG
#include<assert.h>
bool issame(vector<int> a,vector<int>b){
    if (a.size()!=b.size()) return false;
    for (int i=0;i<a.size();i++)
    {
    if (a[i]!=b[i]) return false;
    }
    return true;
}
int main(){
    assert (issame(tri(3) , {1, 3, 2, 8}));
}
```
