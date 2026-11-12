## task_id

```
CPP/105
```

## prompt

```cpp
/*
Given a vector of integers, sort the integers that are between 1 and 9 inclusive,
reverse the resulting vector, and then replace each digit by its corresponding name from
"One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine".

For example:
  arr = {2, 1, 1, 4, 5, 8, 2, 3}   
        -> sort arr -> {1, 1, 2, 2, 3, 4, 5, 8} 
        -> reverse arr -> {8, 5, 4, 3, 2, 2, 1, 1}
  return {"Eight", "Five", "Four", "Three", "Two", "Two", "One", "One"}

  If the vector is empty, return an empty vector:
  arr = {}
  return {}

  If the vector has any strange number ignore it:
  arr = {1, -1 , 55} 
        -> sort arr -> {-1, 1, 55}
        -> reverse arr -> {55, 1, -1}
  return = {"One"}
*/
#include<stdio.h>
#include<vector>
#include<string>
#include<map>
#include<algorithm>
using namespace std;
vector<string> by_length(vector<int> arr){
```

## declaration

```cpp
#include<stdio.h>
#include<math.h>
#include<vector>
#include<string>
#include<map>
#include<algorithm>
using namespace std;
#include<stdlib.h>
vector<string> by_length(vector<int> arr){
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
    assert (issame(by_length({2, 1, 1, 4, 5, 8, 2, 3}) , {"Eight", "Five", "Four", "Three", "Two", "Two", "One", "One"}));
    assert (issame(by_length({}) , {}));
    assert (issame(by_length({1, -1 , 55}) , {"One"}));
}
```
