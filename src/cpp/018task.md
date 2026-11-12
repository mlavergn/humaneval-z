## task_id

```
CPP/18
```

## prompt

```cpp
/*
Find how many times a given substring can be found in the original string. Count overlaping cases.
>>> how_many_times("", "a")
0
>>> how_many_times("aaa", "a")
3
>>> how_many_times("aaaa", "aa")
3
*/
#include<stdio.h>
#include<string>
using namespace std;
int how_many_times(string str,string substring){
```

## declaration

```cpp
#include<stdio.h>
#include<math.h>
#include<string>
using namespace std;
#include<algorithm>
#include<stdlib.h>
int how_many_times(string str,string substring){
```

## example_test

```cpp
#undef NDEBUG
#include<assert.h>
int main(){
    assert (how_many_times("", "a") == 0);
    assert (how_many_times("aaa", "a") == 3);
    assert (how_many_times("aaaa", "aa") == 3);
}
```
