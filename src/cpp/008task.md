## task_id

```
CPP/8
```

## prompt

```cpp
/*
For a given vector of integers, return a vector consisting of a sum and a product of all the integers in a vector.
Empty sum should be equal to 0 and empty product should be equal to 1.
>>> sum_product({})
(0, 1)
>>> sum_product({1, 2, 3, 4})
(10, 24)
*/
#include<stdio.h>
#include<vector>
using namespace std;
vector<int> sum_product(vector<int> numbers){
```

## declaration

```cpp
#include<stdio.h>
#include<vector>
using namespace std;
#include<algorithm>
#include<math.h>
#include<stdlib.h>
vector<int> sum_product(vector<int> numbers){
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
    assert (issame(sum_product({}) ,{0, 1}));
    assert (issame(sum_product({1, 2, 3,4}), {10, 24}));
}
```
