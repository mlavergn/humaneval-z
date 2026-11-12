## task_id

```
CPP/65
```

## prompt

```cpp
/*
Circular shift the digits of the integer x, shift the digits right by shift
and return the result as a string.
If shift > number of digits, return digits reversed.
>>> circular_shift(12, 1)
"21"
>>> circular_shift(12, 2)
"12"
*/
#include<stdio.h>
#include<string>
using namespace std;
string circular_shift(int x,int shift){
```

## declaration

```cpp
#include<stdio.h>
#include<math.h>
#include<string>
using namespace std;
#include<algorithm>
#include<stdlib.h>
string circular_shift(int x,int shift){
```

## example_test

```cpp
#undef NDEBUG
#include<assert.h>
int main(){
    assert (circular_shift(12, 2) == "12");
    assert (circular_shift(12, 1) == "21");
}
```
