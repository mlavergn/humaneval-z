## task_id

```
CPP/150
```

## prompt

```cpp
/*
A simple program which should return the value of x if n is 
a prime number and should return the value of y otherwise.

Examples:
for x_or_y(7, 34, 12) == 34
for x_or_y(15, 8, 5) == 5

*/
#include<stdio.h>
using namespace std;
int x_or_y(int n,int x,int y){
```

## declaration

```cpp
#include<stdio.h>
#include<math.h>
#include<algorithm>
using namespace std;
#include<stdlib.h>
int x_or_y(int n,int x,int y){
```

## example_test

```cpp
#undef NDEBUG
#include<assert.h>
int main(){
    assert (x_or_y(7, 34, 12) == 34);
    assert (x_or_y(15, 8, 5) == 5);
}
```
