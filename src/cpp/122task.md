## task_id

```
CPP/122
```

## prompt

```cpp
/*
Given a non-empty vector of integers arr and an integer k, return
the sum of the elements with at most two digits from the first k elements of arr.

Example:

    Input: arr = {111,21,3,4000,5,6,7,8,9}, k = 4
    Output: 24 # sum of 21 + 3

Constraints:
    1. 1 <= len(arr) <= 100
    2. 1 <= k <= len(arr)
*/
#include<stdio.h>
#include<vector>
using namespace std;
int add_elements(vector<int> arr,int k){
```

## declaration

```cpp
#include<stdio.h>
#include<math.h>
#include<vector>
using namespace std;
#include<algorithm>
#include<stdlib.h>
int add_elements(vector<int> arr,int k){
```

## example_test

```cpp
#undef NDEBUG
#include<assert.h>
int main(){
    assert (add_elements({111,21,3,4000,5,6,7,8,9}, 4) == 24);
}
```
