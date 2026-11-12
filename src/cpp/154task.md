## task_id

```
CPP/154
```

## prompt

```cpp
/*
You are given 2 words. You need to return true if the second word or any of its rotations is a substring in the first word
cycpattern_check("abcd","abd") => false
cycpattern_check("hello","ell") => true
cycpattern_check("whassup","psus") => false
cycpattern_check("abab","baa") => true
cycpattern_check("efef","eeff") => false
cycpattern_check("himenss",'simen") => true

*/
#include<stdio.h>
#include<string>
using namespace std;
bool cycpattern_check(string a,string b){
```

## declaration

```cpp
#include<stdio.h>
#include<string>
using namespace std;
#include<algorithm>
#include<math.h>
#include<stdlib.h>
bool cycpattern_check(string a,string b){
```

## example_test

```cpp
#undef NDEBUG
#include<assert.h>
int main(){
    assert  (cycpattern_check("abcd","abd") == false );
    assert  (cycpattern_check("hello","ell") == true );
    assert  (cycpattern_check("whassup","psus") == false );
    assert  (cycpattern_check("abab","baa") == true );
    assert  (cycpattern_check("efef","eeff") == false );
    assert  (cycpattern_check("himenss","simen") == true );
}
```
