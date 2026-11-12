## task_id

```
CPP/80
```

## prompt

```cpp
/*
You are given a string s.
Your task is to check if the string is happy or not.
A string is happy if its length is at least 3 and every 3 consecutive letters are distinct
For example:
is_happy("a") => false
is_happy("aa") => false
is_happy("abcd") => true
is_happy("aabb") => false
is_happy("adb") => true
is_happy("xyy") => false
*/
#include<stdio.h>
#include<string>
using namespace std;
bool is_happy(string s){
```

## declaration

```cpp
#include<stdio.h>
#include<math.h>
#include<string>
using namespace std;
#include<algorithm>
#include<stdlib.h>
bool is_happy(string s){
```

## example_test

```cpp
#undef NDEBUG
#include<assert.h>
int main(){
    assert (is_happy("a") == false );
    assert (is_happy("aa") == false );
    assert (is_happy("abcd") == true );
    assert (is_happy("aabb") == false );
    assert (is_happy("adb") == true );
    assert (is_happy("xyy") == false );
}
```
