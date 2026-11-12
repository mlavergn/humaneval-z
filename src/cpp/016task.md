## task_id

```
CPP/16
```

## prompt

```cpp
/*
Given a string, find out how many distinct characters (regardless of case) does it consist of
>>> count_distinct_characters("xyzXYZ")
3
>>> count_distinct_characters("Jerry")
4
*/
#include<stdio.h>
#include<vector>
#include<string>
#include<algorithm>
using namespace std;
int count_distinct_characters(string str){ 
```

## declaration

```cpp
#include<stdio.h>
#include<math.h>
#include<vector>
#include<string>
#include<algorithm>
using namespace std;
#include<stdlib.h>
int count_distinct_characters(string str){ 
```

## example_test

```cpp
#undef NDEBUG
#include<assert.h>
int main(){
    assert (count_distinct_characters("xyzXYZ") == 3);
    assert (count_distinct_characters("Jerry") == 4);
}
```
