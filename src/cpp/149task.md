## task_id

```
CPP/149
```

## prompt

```cpp
/*
Write a function that accepts a vector of strings as a parameter,
deletes the strings that have odd lengths from it,
and returns the resulted vector with a sorted order,
The vector is always a vector of strings and never a vector of numbers,
and it may contain duplicates.
The order of the vector should be ascending by length of each word, and you
should return the vector sorted by that rule.
If two words have the same length, sort the vector alphabetically.
The function should return a vector of strings in sorted order.
You may assume that all words will have the same length.
For example:
assert vector_sort({"aa", "a", "aaa"}) => {"aa"}
assert vector_sort({"ab", "a", "aaa", "cd"}) => {"ab", "cd"}
*/
#include<stdio.h>
#include<vector>
#include<string>
#include<algorithm>
using namespace std;
vector<string> sorted_list_sum(vector<string> lst){
```

## declaration

```cpp
#include<stdio.h>
#include<vector>
#include<string>
#include<algorithm>
using namespace std;
#include<math.h>
#include<stdlib.h>
vector<string> sorted_list_sum(vector<string> lst){
```

## example_test

```cpp
#undef NDEBUG
#include<assert.h>
bool issame(vector<string> a,vector<string>b){
    if (a.size()!=b.size()) return false;
    for (int i=0;i<a.size();i++)
    {
    if (a[i]!=b[i]) return false;
    }
    return true;
}
int main(){
    assert (issame(sorted_list_sum({"aa", "a", "aaa"}) , {"aa"}));
    assert (issame(sorted_list_sum({"ab", "a", "aaa", "cd"}) , {"ab", "cd"}));
}
```
