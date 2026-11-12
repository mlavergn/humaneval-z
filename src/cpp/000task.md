## task_id

```
CPP/0
```

## prompt

```cpp
/*
Check if in given vector of numbers, are any two numbers closer to each other than
given threshold.
>>> has_close_elements({1.0, 2.0, 3.0}, 0.5)
false
>>> has_close_elements({1.0, 2.8, 3.0, 4.0, 5.0, 2.0}, 0.3)
true
*/
#include<stdio.h>
#include<vector>
#include<math.h>
using namespace std;
bool has_close_elements(vector<float> numbers, float threshold){
```

## declaration

```cpp
#include<stdio.h>
#include<vector>
#include<math.h>
using namespace std;
#include<algorithm>
#include<stdlib.h>
bool has_close_elements(vector<float> numbers, float threshold){
```

## example_test

```cpp
#undef NDEBUG
#include<assert.h>
int main(){
    assert (has_close_elements({1.0, 2.0, 3.0}, 0.5) == false && "failure 1");
    assert (has_close_elements({1.0, 2.8, 3.0, 4.0, 5.0, 2.0}, 0.3) && "failure 2") ;
}
```
