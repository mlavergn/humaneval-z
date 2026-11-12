## task_id

```
CPP/19
```

## prompt

```cpp
/*
Input is a space-delimited string of numberals from "zero" to "nine".
Valid choices are "zero", "one", 'two", 'three", "four", "five", 'six", 'seven", "eight" and "nine".
Return the string with numbers sorted from smallest to largest
>>> sort_numbers('three one five")
"one three five"
*/
#include<stdio.h>
#include<string>
#include<map>
using namespace std;
string sort_numbers(string numbers){
```

## declaration

```cpp
#include<stdio.h>
#include<math.h>
#include<string>
#include<map>
using namespace std;
#include<algorithm>
#include<stdlib.h>
string sort_numbers(string numbers){
```

## example_test

```cpp
#undef NDEBUG
#include<assert.h>
int main(){
    assert (sort_numbers("three one five") == "one three five");
}
```
