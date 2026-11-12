## task_id

```
CPP/161
```

## prompt

```cpp
/*
You are given a string s.
if s[i] is a letter, reverse its case from lower to upper or vise versa, 
otherwise keep it as it is.
If the string contains no letters, reverse the string.
The function should return the resulted string.
Examples
solve("1234") = "4321"
solve("ab") = "AB"
solve("#a@C") = "#A@c"
*/
#include<stdio.h>
#include<string>
using namespace std;
string solve(string s){
```

## declaration

```cpp
#include<stdio.h>
#include<string>
using namespace std;
#include<algorithm>
#include<math.h>
#include<stdlib.h>
string solve(string s){
```

## example_test

```cpp
#undef NDEBUG
#include<assert.h>
int main(){
    assert (solve("1234") == "4321");
    assert (solve("ab") == "AB");
    assert (solve("#a@C") == "#A@c");
}
```
