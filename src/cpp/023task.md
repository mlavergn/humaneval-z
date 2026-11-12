## task_id

```
CPP/23
```

## prompt

```cpp
/*
Return length of given string
>>> strlen("")
0
>>> strlen("abc")
3
*/
#include<stdio.h>
#include<string>
using namespace std;
int strlen(string str){
```

## declaration

```cpp
#include<stdio.h>
#include<math.h>
#include<string>
using namespace std;
#include<algorithm>
#include<stdlib.h>
int strlen(string str){
```

## example_test

```cpp
#undef NDEBUG
#include<assert.h>
int main(){
    assert (strlen("") == 0);
    assert (strlen("abc") == 3);
}
```
