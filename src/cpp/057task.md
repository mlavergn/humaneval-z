## task_id

```
CPP/57
```

## prompt

```cpp
/*
Return true is vector elements are monotonically increasing or decreasing.
>>> monotonic({1, 2, 4, 20})
true
>>> monotonic({1, 20, 4, 10})
false
>>> monotonic({4, 1, 0, -10})
true
*/
#include<stdio.h>
#include<vector>
using namespace std;
bool monotonic(vector<float> l){
```

## declaration

```cpp
#include<stdio.h>
#include<math.h>
#include<vector>
using namespace std;
#include<algorithm>
#include<stdlib.h>
bool monotonic(vector<float> l){
```

## example_test

```cpp
#undef NDEBUG
#include<assert.h>
int main(){
    assert (monotonic({1, 2, 4, 10}) == true);
    assert (monotonic({1, 20, 4, 10}) == false);
    assert (monotonic({4, 1, 0, -10}) == true);
}
```
