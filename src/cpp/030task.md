## task_id

```
CPP/30
```

## prompt

```cpp
/*
Return only positive numbers in the vector.
>>> get_positive({-1, 2, -4, 5, 6})
{2, 5, 6}
>>> get_positive({5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10})
{5, 3, 2, 3, 9, 123, 1}
*/
#include<stdio.h>
#include<math.h>
#include<vector>
using namespace std;
vector<float> get_positive(vector<float> l){
```

## declaration

```cpp
#include<stdio.h>
#include<math.h>
#include<vector>
using namespace std;
#include<algorithm>
#include<stdlib.h>
vector<float> get_positive(vector<float> l){
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
    assert (issame(get_positive({-1, 2, -4, 5, 6}) , {2, 5, 6} ));
    assert (issame(get_positive({5, 3, -5, 2, -3,3, 9, 0, 123, 1, -10}) , {5, 3, 2,  3, 9, 123, 1}));
}
```
