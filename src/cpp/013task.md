## task_id

```
CPP/13
```

## prompt

```cpp
/*
Return a greatest common divisor of two integers a and b
>>> greatest_common_divisor(3, 5)
1
>>> greatest_common_divisor(25, 15)
5
*/
#include<stdio.h>
using namespace std;
int greatest_common_divisor(int a, int b){
```

## declaration

```cpp
#include<stdio.h>
using namespace std;
#include<algorithm>
#include<math.h>
#include<stdlib.h>
int greatest_common_divisor(int a, int b){
```

## example_test

```cpp
#undef NDEBUG
#include<assert.h>
int main(){
    assert (greatest_common_divisor(3, 5) == 1);
     assert (greatest_common_divisor(25, 15) == 5);
}
```
