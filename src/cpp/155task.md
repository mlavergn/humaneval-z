## task_id

```
CPP/155
```

## prompt

```cpp
/*
Given an integer. return a vector that has the number of even and odd digits respectively.

 Example:
    even_odd_count(-12) ==> {1, 1}
    even_odd_count(123) ==> {1, 2}
*/
#include<stdio.h>
#include<math.h>
#include<string>
#include<vector>
using namespace std;
vector<int> even_odd_count(int num){
```

## declaration

```cpp
#include<stdio.h>
#include<math.h>
#include<string>
#include<vector>
using namespace std;
#include<algorithm>
#include<stdlib.h>
vector<int> even_odd_count(int num){
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
    assert (issame(even_odd_count(-12) , {1, 1}));
    assert (issame(even_odd_count(123) , {1, 2}));
}
```
