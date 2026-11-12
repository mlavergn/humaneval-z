## task_id

```
CPP/136
```

## prompt

```cpp
/*
Create a function that returns a vector (a, b), where "a" is
the largest of negative integers, and "b" is the smallest
of positive integers in a vector.
If there is no negative or positive integers, return them as 0.

Examples:
largest_smallest_integers({2, 4, 1, 3, 5, 7}) == {0, 1}
largest_smallest_integers({}) == {0,0}
largest_smallest_integers({0}) == {0,0}
*/
#include<stdio.h>
#include<vector>
using namespace std;
vector<int> largest_smallest_integers(vector<int> lst){
```

## declaration

```cpp
#include<stdio.h>
#include<math.h>
#include<vector>
#include<algorithm>
using namespace std;
#include<stdlib.h>
vector<int> largest_smallest_integers(vector<int> lst){
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
    assert (issame(largest_smallest_integers({2, 4, 1, 3, 5, 7}) , {0, 1}));
    assert (issame(largest_smallest_integers({}) , {0, 0}));
    assert (issame(largest_smallest_integers({0}) , {0, 0}));
}
```
