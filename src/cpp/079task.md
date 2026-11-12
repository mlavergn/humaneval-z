## task_id

```
CPP/79
```

## prompt

```cpp
/*
You will be given a number in decimal form and your task is to convert it to
binary format. The function should return a string, with each character representing a binary
number. Each character in the string will be '0' or '1'.

There will be an extra couple of characters "db" at the beginning and at the end of the string.
The extra characters are there to help with the format.

Examples:
decimal_to_binary(15)   // returns "db1111db"
decimal_to_binary(32)   // returns "db100000db"
*/
#include<stdio.h>
#include<string>
using namespace std;
string decimal_to_binary(int decimal){
```

## declaration

```cpp
#include<stdio.h>
#include<math.h>
#include<string>
using namespace std;
#include<algorithm>
#include<stdlib.h>
string decimal_to_binary(int decimal){
```

## example_test

```cpp
#undef NDEBUG
#include<assert.h>
int main(){
    assert (decimal_to_binary(32) == "db100000db");
    assert (decimal_to_binary(15) == "db1111db");
}
```
