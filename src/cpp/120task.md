## task_id

```
CPP/120
```

## prompt

```cpp
/*
Given a vector arr of integers and a positive integer k, return a sorted vector 
of length k with the maximum k numbers in arr.

Example 1:

    Input: arr = {-3, -4, 5}, k = 3
    Output: {-4, -3, 5}

Example 2:

    Input: arr = {4, -4, 4}, k = 2
    Output: {4, 4}

Example 3:

    Input: arr = {-3, 2, 1, 2, -1, -2, 1}, k = 1
    Output: {2}

Note:
    1. The length of the vector will be in the range of {1, 1000}.
    2. The elements in the vector will be in the range of {-1000, 1000}.
    3. 0 <= k <= len(arr)
*/
#include<stdio.h>
#include<vector>
#include<algorithm>
using namespace std;
vector<int> maximum(vector<int> arr,int k){
```

## declaration

```cpp
#include<stdio.h>
#include<math.h>
#include<vector>
#include<algorithm>
using namespace std;
#include<stdlib.h>
vector<int> maximum(vector<int> arr,int k){
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
    assert (issame(maximum({-3, -4, 5}, 3) , {-4, -3, 5}));
    assert (issame(maximum({4, -4, 4}, 2) , {4, 4}));
    assert (issame(maximum({-3, 2, 1, 2, -1, -2, 1}, 1) , {2}));
}
```
