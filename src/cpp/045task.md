## task_id

```
CPP/45
```

## prompt

```cpp
/*
Given length of a side and high return area for a triangle.
>>> triangle_area(5, 3)
7.5
*/
#include<stdio.h>
#include<math.h>
using namespace std;
float triangle_area(float a,float h){
```

## declaration

```cpp
#include<stdio.h>
#include<math.h>
using namespace std;
#include<algorithm>
#include<stdlib.h>
float triangle_area(float a,float h){
```

## example_test

```cpp
#undef NDEBUG
#include<assert.h>
int main(){
    assert (abs(triangle_area(5, 3) - 7.5)<1e-4);
}
```
