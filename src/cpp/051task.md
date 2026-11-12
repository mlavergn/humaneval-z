## task_id

```
CPP/51
```

## prompt

```cpp
/*
remove_vowels is a function that takes string and returns string without vowels.
>>> remove_vowels("")
""
>>> remove_vowels("abcdef\nghijklm")
"bcdf\nghjklm"
>>> remove_vowels("abcdef")
"bcdf"
>>> remove_vowels("aaaaa")
""
>>> remove_vowels("aaBAA")
"B"
>>> remove_vowels("zbcd")
"zbcd"
*/
#include<stdio.h>
#include<string>
#include<algorithm>
using namespace std;
string remove_vowels(string text){
```

## declaration

```cpp
#include<stdio.h>
#include<math.h>
#include<string>
#include<algorithm>
using namespace std;
#include<stdlib.h>
string remove_vowels(string text){
```

## example_test

```cpp
#undef NDEBUG
#include<assert.h>
int main(){
    assert (remove_vowels("") == "");
    assert (remove_vowels("abcdef\nghijklm") == "bcdf\nghjklm");
    assert (remove_vowels("abcdef") == "bcdf");
    assert (remove_vowels("aaaaa") == "");
    assert (remove_vowels("aaBAA") == "B");
    assert (remove_vowels("zbcd") == "zbcd");
}
```
