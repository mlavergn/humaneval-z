## task_id

```
CPP/12
```

## prompt

```cpp
/*
Out of vector of strings, return the longest one. Return the first one in case of multiple
strings of the same length. Return None in case the input vector is empty.
>>> longest({})

>>> longest({"a", "b", "c"})
"a"
>>> longest({"a", "bb", "ccc"})
"ccc"
*/
#include<stdio.h>
#include<vector>
#include<string>
using namespace std;
string longest(vector<string> strings){
```

## declaration

```cpp
#include<stdio.h>
#include<vector>
#include<string>
using namespace std;
#include<algorithm>
#include<math.h>
#include<stdlib.h>
string longest(vector<string> strings){
```

## example_test

```cpp
#undef NDEBUG
#include<assert.h>
int main(){
    assert (longest({}) == "");
    assert (longest({"a", "b", "c"}) == "a");
    assert (longest({"a", "bb", "ccc"}) == "ccc");
}
```
