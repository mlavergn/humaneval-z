## task_id

```
CPP/3
```

## prompt

```cpp
/*
You"re given a vector of deposit and withdrawal operations on a bank account that starts with
zero balance. Your task is to detect if at any point the balance of account falls below zero, and
at that point function should return true. Otherwise it should return false.
>>> below_zero({1, 2, 3})
false
>>> below_zero({1, 2, -4, 5})
true
*/
#include<stdio.h>
#include<vector>
using namespace std;
bool below_zero(vector<int> operations){
```

## declaration

```cpp
#include<stdio.h>
#include<vector>
using namespace std;
#include<algorithm>
#include<math.h>
#include<stdlib.h>
bool below_zero(vector<int> operations){
```

## example_test

```cpp
#undef NDEBUG
#include<assert.h>
int main(){
    assert (below_zero({1, 2, 3}) == false);
    assert (below_zero({1, 2, -4, 5}) == true);
}
```
