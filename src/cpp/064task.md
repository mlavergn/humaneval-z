## task_id

```
CPP/64
```

## prompt

```cpp
/*
Write a function vowels_count which takes a string representing a word as input and returns the number of vowels in the string. Vowels in this case are 'a', 'e', 'i', 'o', 'u'. 
Here, 'y' is also a vowel, but only when it is at the end of the given word.
Example: 
>>> vowels_count("abcde") 
2 
>>> vowels_count("ACEDY") 
3
*/
#include<stdio.h>
#include<string>
#include<algorithm>
using namespace std;
int vowels_count(string s){
```

## declaration

```cpp
#include<stdio.h>
#include<math.h>
#include<string>
#include<algorithm>
using namespace std;
#include<stdlib.h>
int vowels_count(string s){
```

## example_test

```cpp
#undef NDEBUG
#include<assert.h>
int main(){
    assert (vowels_count("abcde") == 2);
    assert (vowels_count("ACEDY") == 3);
}
```
