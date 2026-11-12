## task_id

```
CPP/72
```

## prompt

```cpp
/*
Write a function that returns true if the object q will fly, and false otherwise.
The object q will fly if it's balanced (it is a palindromic vector) and the sum of its elements is less than or equal the maximum possible weight w.

Example:
will_it_fly({1, 2}, 5) ➞ false 
// 1+2 is less than the maximum possible weight, but it's unbalanced.

will_it_fly({3, 2, 3}, 1) ➞ false
// it's balanced, but 3+2+3 is more than the maximum possible weight.

will_it_fly({3, 2, 3}, 9) ➞ true
// 3+2+3 is less than the maximum possible weight, and it's balanced.

will_it_fly({3}, 5) ➞ true
// 3 is less than the maximum possible weight, and it's balanced.
*/
#include<stdio.h>
#include<vector>
using namespace std;
bool will_it_fly(vector<int> q,int w){
```

## declaration

```cpp
#include<stdio.h>
#include<math.h>
#include<vector>
using namespace std;
#include<algorithm>
#include<stdlib.h>
bool will_it_fly(vector<int> q,int w){
```

## example_test

```cpp
#undef NDEBUG
#include<assert.h>
int main(){
    assert (will_it_fly({3, 2, 3}, 9)==true);
    assert (will_it_fly({1, 2}, 5) == false);
    assert (will_it_fly({3}, 5) == true);
    assert (will_it_fly({3, 2, 3}, 1) == false);
}
```
