## task_id

```
CPP/157
```

## prompt

```cpp
/*
Given the lengths of the three sides of a triangle. Return true if the three
sides form a right-angled triangle, false otherwise.
A right-angled triangle is a triangle in which one angle is right angle or 
90 degree.
Example:
right_angle_triangle(3, 4, 5) == true
right_angle_triangle(1, 2, 3) == false
*/
#include<stdio.h>
#include<math.h>
using namespace std;
bool right_angle_triangle(float a,float b,float c){
```

## declaration

```cpp
#include<stdio.h>
#include<math.h>
using namespace std;
#include<algorithm>
#include<stdlib.h>
bool right_angle_triangle(float a,float b,float c){
```

## example_test

```cpp
#undef NDEBUG
#include<assert.h>
int main(){
    assert (right_angle_triangle(3, 4, 5) == true);
    assert (right_angle_triangle(1, 2, 3) == false);
}
```
