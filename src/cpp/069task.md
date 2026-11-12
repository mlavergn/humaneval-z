## task_id

```
CPP/69
```

## prompt

```cpp
/*
You are given a non-empty vector of positive integers. Return the greatest integer that is greater than 
zero, and has a frequency greater than or equal to the value of the integer itself. 
The frequency of an integer is the number of times it appears in the vector.
If no such a value exist, return -1.
Examples:
    search({4, 1, 2, 2, 3, 1}) == 2
    search({1, 2, 2, 3, 3, 3, 4, 4, 4}) == 3
    search({5, 5, 4, 4, 4}) == -1
*/
#include<stdio.h>
#include<vector>
using namespace std;
int search(vector<int> lst){
```

## declaration

```cpp
#include<stdio.h>
#include<math.h>
#include<vector>
using namespace std;
#include<algorithm>
#include<stdlib.h>
int search(vector<int> lst){
```

## example_test

```cpp
#undef NDEBUG
#include<assert.h>
int main(){
    assert (search({4, 1, 2, 2, 3, 1}) == 2);
    assert (search({1, 2, 2, 3, 3, 3, 4, 4, 4}) == 3);
    assert (search({5, 5, 4, 4, 4}) == -1);
}
```
