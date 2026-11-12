## task_id

```
CPP/11
```

## prompt

```cpp
/*
Input are two strings a and b consisting only of 1s and 0s.
Perform binary XOR on these inputs and return result also as a string.
>>> string_xor("010", "110")
"100"
*/
#include<stdio.h>
#include<string>
using namespace std;
string string_xor(string a,string b){
```

## declaration

```cpp
#include<stdio.h>
#include<string>
using namespace std;
#include<algorithm>
#include<math.h>
#include<stdlib.h>
string string_xor(string a,string b){
```

## example_test

```cpp
#undef NDEBUG
#include<assert.h>
int main(){
    assert (string_xor("010", "110") == "100");
}
```
