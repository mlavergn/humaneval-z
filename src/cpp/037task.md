## task_id

```
CPP/37
```

## prompt

```cpp
/*
This function takes a vector l and returns a vector l' such that
l' is identical to l in the odd indicies, while its values at the even indicies are equal
to the values of the even indicies of l, but sorted.
>>> sort_even({1, 2, 3})
{1, 2, 3}
>>> sort_even({5, 6, 3, 4})
{3, 6, 5, 4}
*/
#include<stdio.h>
#include<math.h>
#include<vector>
#include<algorithm>
using namespace std;
vector<float> sort_even(vector<float> l){
```

## declaration

```cpp
#include<stdio.h>
#include<math.h>
#include<vector>
#include<algorithm>
using namespace std;
#include<stdlib.h>
vector<float> sort_even(vector<float> l){
```

## example_test

```cpp
#undef NDEBUG
#include<assert.h>
bool issame(vector<float> a,vector<float>b){
    if (a.size()!=b.size()) return false;
    for (int i=0;i<a.size();i++)
    {
        if (abs(a[i]-b[i])>1e-4) return false;
    }
    return true;
}
int main(){
    assert (issame(sort_even({1, 2, 3}), {1, 2, 3}));
    assert (issame(sort_even({5, 6,3,4}) , {3,6,5,4}));
}
```
