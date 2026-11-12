## task_id

```
CPP/138
```

## prompt

```cpp
/*
Evaluate whether the given number n can be written as the sum of exactly 4 positive even numbers
Example
is_equal_to_sum_even(4) == false
is_equal_to_sum_even(6) == false
is_equal_to_sum_even(8) == true
*/
#include<stdio.h>
using namespace std;
bool is_equal_to_sum_even(int n){
```

## declaration

```cpp
#include<stdio.h>
#include<math.h>
#include<algorithm>
using namespace std;
#include<stdlib.h>
bool is_equal_to_sum_even(int n){
```

## example_test

```cpp
#undef NDEBUG
#include<assert.h>
int main(){
    assert (is_equal_to_sum_even(4) == false);
    assert (is_equal_to_sum_even(6) == false);
    assert (is_equal_to_sum_even(8) == true);
}
```
