## task_id

```
CPP/53
```

## prompt

```cpp
/*
Add two numbers x and y
>>> add(2, 3)
5
>>> add(5, 7)
12
*/
#include<stdio.h>
#include<stdlib.h>
using namespace std;
int add(int x,int y){
```

## declaration

```cpp
#include<stdio.h>
#include<stdlib.h>
using namespace std;
#include<algorithm>
#include<math.h>
int add(int x,int y){
```

## example_test

```cpp
#undef NDEBUG
#include<assert.h>
int main(){
    assert (add(2, 3) == 5);
    assert (add(5, 7) == 12);
}
```
