## task_id

```
CPP/139
```

## prompt

```cpp
/*
The Brazilian factorial is defined as:
brazilian_factorial(n) = n! * (n-1)! * (n-2)! * ... * 1!
where n > 0

For example:
>>> special_factorial(4)
288

The function will receive an integer as input and should return the special
factorial of this integer.
*/
#include<stdio.h>
using namespace std;
long long special_factorial(int n){
```

## declaration

```cpp
#include<stdio.h>
#include<math.h>
#include<algorithm>
using namespace std;
#include<stdlib.h>
long long special_factorial(int n){
```

## example_test

```cpp
#undef NDEBUG
#include<assert.h>
int main(){
    assert (special_factorial(4) == 288);
}
```
