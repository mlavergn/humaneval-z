## task_id

```
CPP/9
```

## prompt

```cpp
/*
From a given vector of integers, generate a vector of rolling maximum element found until given moment
in the sequence.
>>> rolling_max({1, 2, 3, 2, 3, 4, 2})
{1, 2, 3, 3, 3, 4, 4}
*/
#include<stdio.h>
#include<vector>
using namespace std;
vector<int> rolling_max(vector<int> numbers){
```

## declaration

```cpp
#include<stdio.h>
#include<vector>
using namespace std;
#include<algorithm>
#include<math.h>
#include<stdlib.h>
vector<int> rolling_max(vector<int> numbers){
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
     assert (issame(rolling_max({1, 2, 3, 2, 3, 4, 2}),{1, 2, 3, 3, 3, 4, 4}));
}
```
