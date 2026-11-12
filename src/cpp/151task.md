## task_id

```
CPP/151
```

## prompt

```cpp
/*
Given a vector of numbers, return the sum of squares of the numbers
in the vector that are odd. Ignore numbers that are negative or not integers.

double_the_difference({1, 3, 2, 0}) == 1 + 9 + 0 + 0 = 10
double_the_difference({-1, -2, 0}) == 0
double_the_difference({9, -2}) == 81
double_the_difference({0}) == 0  

If the input vector is empty, return 0.
*/
#include<stdio.h>
#include<math.h>
#include<vector>
using namespace std;
long long double_the_difference(vector<float> lst){
```

## declaration

```cpp
#include<stdio.h>
#include<math.h>
#include<vector>
#include<algorithm>
using namespace std;
#include<stdlib.h>
long long double_the_difference(vector<float> lst){
```

## example_test

```cpp
#undef NDEBUG
#include<assert.h>
int main(){
    assert (double_the_difference({1, 3, 2, 0}) == 10);
    assert (double_the_difference({-1, -2, 0}) == 0);
    assert (double_the_difference({9, -2}) == 81 );
    assert (double_the_difference({0}) == 0  );
}
```
