## task_id

```
CPP/92
```

## prompt

```cpp
/*
Create a function that takes 3 numbers.
Returns true if one of the numbers is equal to the sum of the other two, and all numbers are integers.
Returns false in any other cases.

Examples
any_int(5, 2, 7) ➞ true

any_int(3, 2, 2) ➞ false

any_int(3, -2, 1) ➞ true

any_int(3.6, -2.2, 2) ➞ false



*/
#include<stdio.h>
#include<math.h>
using namespace std;
bool any_int(float a,float b,float c){
```

## declaration

```cpp
#include<stdio.h>
#include<math.h>
using namespace std;
#include<algorithm>
#include<stdlib.h>
bool any_int(float a,float b,float c){
```

## example_test

```cpp
#undef NDEBUG
#include<assert.h>
int main(){
    assert (any_int(5, 2, 7)==true);
    assert (any_int(3, 2, 2)==false);
    assert (any_int(3, -2, 1)==true);
    assert (any_int(3.6, -2.2, 2)==false);
}
```
