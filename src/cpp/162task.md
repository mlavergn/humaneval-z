## task_id

```
CPP/162
```

## prompt

```cpp
/*
Given a string 'text", return its md5 hash equivalent string.
If 'text" is an empty string, return None.

>>> string_to_md5("Hello world") == "3e25960a79dbc69b674cd4ec67a72c62"
*/
#include<stdio.h>
#include<string>
#include<openssl/md5.h>
using namespace std;
string string_to_md5(string text){
```

## declaration

```cpp
#include<stdio.h>
#include<string>
#include<openssl/md5.h>
using namespace std;
#include<algorithm>
#include<math.h>
#include<stdlib.h>
string string_to_md5(string text){
```

## example_test

```cpp
#undef NDEBUG
#include<assert.h>
int main(){
    assert (string_to_md5("Hello world") == "3e25960a79dbc69b674cd4ec67a72c62");
}
```
