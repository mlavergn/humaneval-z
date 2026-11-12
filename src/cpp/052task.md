## task_id

```
CPP/52
```

## prompt

```cpp
/*
Return true if all numbers in the vector l are below threshold t.
>>> below_threshold({1, 2, 4, 10}, 100)
true
>>> below_threshold({1, 20, 4, 10}, 5)
false
*/
#include<stdio.h>
#include<vector>
using namespace std;
bool below_threshold(vector<int>l, int t){
```

## declaration

```cpp
#include<stdio.h>
#include<math.h>
#include<vector>
using namespace std;
#include<algorithm>
#include<stdlib.h>
bool below_threshold(vector<int>l, int t){
```

## example_test

```cpp
#undef NDEBUG
#include<assert.h>
int main(){
    assert (below_threshold({1, 2, 4, 10}, 100));
    assert (not(below_threshold({1, 20, 4, 10}, 5)));
}
```
