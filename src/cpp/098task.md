## task_id

```
CPP/98
```

## prompt

```cpp
/*
Given a string s, count the number of uppercase vowels in even indices.

For example:
count_upper("aBCdEf") returns 1
count_upper("abcdefg") returns 0
count_upper("dBBE") returns 0
*/
#include<stdio.h>
#include<string>
#include<algorithm>
using namespace std;
int count_upper(string s){
```

## declaration

```cpp
#include<stdio.h>
#include<math.h>
#include<string>
#include<algorithm>
using namespace std;
#include<stdlib.h>
int count_upper(string s){
```

## example_test

```cpp
#undef NDEBUG
#include<assert.h>
int main(){
    assert (count_upper("aBCdEf")  == 1);
    assert (count_upper("abcdefg") == 0);
    assert (count_upper("dBBE") == 0);
}
```
