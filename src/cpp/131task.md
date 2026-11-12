## task_id

```
CPP/131
```

## prompt

```cpp
/*
Given a positive integer n, return the product of the odd digits.
Return 0 if all digits are even.
For example:
digits(1)  == 1
digits(4)  == 0
digits(235) == 15
*/
#include<stdio.h>
#include<string>
using namespace std;
int digits(int n){
```

## declaration

```cpp
#include<stdio.h>
#include<math.h>
#include<string>
#include<algorithm>
using namespace std;
#include<stdlib.h>
int digits(int n){
```

## example_test

```cpp
#undef NDEBUG
#include<assert.h>
int main(){
    assert (digits(1) == 1);
    assert (digits(4) == 0);
    assert (digits(235) ==15);
}
```
