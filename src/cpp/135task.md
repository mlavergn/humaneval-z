## task_id

```
CPP/135
```

## prompt

```cpp
/*
Create a function which returns the largest index of an element which
is not greater than or equal to the element immediately preceding it. If
no such element exists then return -1. The given vector will not contain
duplicate values.

Examples:
can_arrange({1,2,4,3,5}) = 3
can_arrange({1,2,3}) = -1
*/
#include<stdio.h>
#include<vector>
using namespace std;
int can_arrange(vector<int> arr){
```

## declaration

```cpp
#include<stdio.h>
#include<math.h>
#include<vector>
#include<algorithm>
using namespace std;
#include<stdlib.h>
int can_arrange(vector<int> arr){
```

## example_test

```cpp
#undef NDEBUG
#include<assert.h>
int main(){
    assert (can_arrange({1,2,4,3,5})==3);
    assert (can_arrange({1,2,3})==-1);
}
```
