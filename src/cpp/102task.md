## task_id

```
CPP/102
```

## prompt

```cpp
/*
This function takes two positive numbers x and y and returns the
biggest even integer number that is in the range [x, y] inclusive. If 
there's no such number, then the function should return -1.

For example:
choose_num(12, 15) = 14
choose_num(13, 12) = -1
*/
#include<stdio.h>
using namespace std;
int choose_num(int x,int y){
```

## declaration

```cpp
#include<stdio.h>
#include<math.h>
using namespace std;
#include<algorithm>
#include<stdlib.h>
int choose_num(int x,int y){
```

## example_test

```cpp
#undef NDEBUG
#include<assert.h>
int main(){
    assert (choose_num(12, 15) == 14);
    assert (choose_num(13, 12) == -1);
}
```
