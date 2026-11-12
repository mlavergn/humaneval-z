## task_id

```
CPP/75
```

## prompt

```cpp
/*
Write a function that returns true if the given number is the multiplication of 3 prime numbers
and false otherwise.
Knowing that (a) is less then 100. 
Example:
is_multiply_prime(30) == true
30 = 2 * 3 * 5
*/
#include<stdio.h>
using namespace std;
bool is_multiply_prime(int a){
```

## declaration

```cpp
#include<stdio.h>
#include<math.h>
using namespace std;
#include<algorithm>
#include<stdlib.h>
bool is_multiply_prime(int a){
```

## example_test

```cpp
#undef NDEBUG
#include<assert.h>
int main(){
    assert (is_multiply_prime(30) == true);
}
```
