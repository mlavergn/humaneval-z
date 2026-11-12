## task_id

```
CPP/110
```

## prompt

```cpp
/*
In this problem, you will implement a function that takes two vectors of numbers,
and determines whether it is possible to perform an exchange of elements
between them to make lst1 a vector of only even numbers.
There is no limit on the number of exchanged elements between lst1 and lst2.
If it is possible to exchange elements between the lst1 and lst2 to make
all the elements of lst1 to be even, return "YES".
Otherwise, return "NO".
For example:
exchange({1, 2, 3, 4}, {1, 2, 3, 4}) => "YES"
exchange({1, 2, 3, 4}, {1, 5, 3, 4}) => "NO"
It is assumed that the input vectors will be non-empty.
*/
#include<stdio.h>
#include<vector>
#include<string>
using namespace std;
string exchange(vector<int> lst1,vector<int> lst2){
```

## declaration

```cpp
#include<stdio.h>
#include<math.h>
#include<vector>
#include<string>
using namespace std;
#include<algorithm>
#include<stdlib.h>
string exchange(vector<int> lst1,vector<int> lst2){
```

## example_test

```cpp
#undef NDEBUG
#include<assert.h>
int main(){
    assert (exchange({1, 2, 3, 4}, {1, 2, 3, 4}) == "YES");
    assert (exchange({1, 2, 3, 4}, {1, 5, 3, 4}) == "NO");
}
```
