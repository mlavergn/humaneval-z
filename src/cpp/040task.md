## task_id

```
CPP/40
```

## prompt

```cpp
/*
triples_sum_to_zero takes a vector of integers as an input.
it returns true if there are three distinct elements in the vector that
sum to zero, and false otherwise.

>>> triples_sum_to_zero({1, 3, 5, 0})
false
>>> triples_sum_to_zero({1, 3, -2, 1})
true
>>> triples_sum_to_zero({1, 2, 3, 7})
false
>>> triples_sum_to_zero({2, 4, -5, 3, 9, 7})
true
>>> triples_sum_to_zero({1})
false
*/
#include<stdio.h>
#include<vector>
using namespace std;
bool triples_sum_to_zero(vector<int> l){
```

## declaration

```cpp
#include<stdio.h>
#include<math.h>
#include<vector>
#include<algorithm>
using namespace std;
#include<stdlib.h>
bool triples_sum_to_zero(vector<int> l){
```

## example_test

```cpp
#undef NDEBUG
#include<assert.h>
int main(){
    assert (triples_sum_to_zero({1, 3, 5, 0}) == false);
    assert (triples_sum_to_zero({1, 3, -2, 1}) == true);
    assert (triples_sum_to_zero({1, 2, 3, 7}) == false);
    assert (triples_sum_to_zero({2, 4, -5, 3, 9, 7}) == true);
}
```
