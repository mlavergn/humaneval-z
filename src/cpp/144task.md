## task_id

```
CPP/144
```

## prompt

```cpp
/*
Your task is to implement a function that will simplify the expression
x * n. The function returns true if x * n evaluates to a whole number and false
otherwise. Both x and n, are string representation of a fraction, and have the following format,
<numerator>/<denominator> where both numerator and denominator are positive whole numbers.

You can assume that x, and n are valid fractions, and do not have zero as denominator.

simplify("1/5", "5/1") = true
simplify("1/6", "2/1") = false
simplify("7/10", "10/2") = false
*/
#include<stdio.h>
#include<string>
using namespace std;
bool simplify(string x,string n){
```

## declaration

```cpp
#include<stdio.h>
#include<string>
#include<algorithm>
using namespace std;
#include<math.h>
#include<stdlib.h>
bool simplify(string x,string n){
```

## example_test

```cpp
#undef NDEBUG
#include<assert.h>
int main(){
    assert (simplify("1/5", "5/1") == true);
    assert (simplify("1/6", "2/1") == false);
    assert (simplify("7/10", "10/2") == false);
}
```
