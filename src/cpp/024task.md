## task_id

```
CPP/24
```

## prompt

```cpp
/*
For a given number n, find the largest number that divides n evenly, smaller than n
>>> largest_divisor(15)
5
*/
#include<stdio.h>
using namespace std;
int largest_divisor(int n){
```

## declaration

```cpp
#include<stdio.h>
#include<math.h>
using namespace std;
#include<algorithm>
#include<stdlib.h>
int largest_divisor(int n){
```

## example_test

```cpp
#undef NDEBUG
#include<assert.h>
int main(){
    assert (largest_divisor(15) == 5);
}
```
