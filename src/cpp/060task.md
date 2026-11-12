## task_id

```
CPP/60
```

## prompt

```cpp
/*
sum_to_n is a function that sums numbers from 1 to n.
>>> sum_to_n(30)
465
>>> sum_to_n(100)
5050
>>> sum_to_n(5)
15
>>> sum_to_n(10)
55
>>> sum_to_n(1)
1
*/
#include<stdio.h>
using namespace std;
int sum_to_n(int n){
```

## declaration

```cpp
#include<stdio.h>
#include<math.h>
using namespace std;
#include<algorithm>
#include<stdlib.h>
int sum_to_n(int n){
```

## example_test

```cpp
#undef NDEBUG
#include<assert.h>
int main(){
    assert (sum_to_n(1) == 1);
    assert (sum_to_n(5) == 15);
    assert (sum_to_n(10) == 55);
    assert (sum_to_n(30) == 465);
    assert (sum_to_n(100) == 5050);
}
```
