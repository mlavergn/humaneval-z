## task_id

```
CPP/15
```

## prompt

```cpp
/*
Return a string containing space-delimited numbers starting from 0 upto n inclusive.
>>> string_sequence(0)
"0"
>>> string_sequence(5)
"0 1 2 3 4 5"
*/
#include<stdio.h>
#include<string>
using namespace std;
string string_sequence(int n){
```

## declaration

```cpp
#include<stdio.h>
#include<math.h>
#include<string>
using namespace std;
#include<algorithm>
#include<stdlib.h>
string string_sequence(int n){
```

## example_test

```cpp
#undef NDEBUG
#include<assert.h>
int main(){
    assert (string_sequence(0) == "0");
    assert (string_sequence(5) == "0 1 2 3 4 5");
}
```
