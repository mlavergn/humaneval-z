## task_id

```
CPP/26
```

## prompt

```cpp
/*
From a vector of integers, remove all elements that occur more than once.
Keep order of elements left the same as in the input.
>>> remove_duplicates({1, 2, 3, 2, 4})
{1, 3, 4}
*/
#include<stdio.h>
#include<vector>
#include<algorithm>
using namespace std;
vector<int> remove_duplicates(vector<int> numbers){
```

## declaration

```cpp
#include<stdio.h>
#include<math.h>
#include<vector>
#include<algorithm>
using namespace std;
#include<stdlib.h>
vector<int> remove_duplicates(vector<int> numbers){
```

## example_test

```cpp
#undef NDEBUG
#include<assert.h>
bool issame(vector<int> a,vector<int>b){
    if (a.size()!=b.size()) return false;
    for (int i=0;i<a.size();i++)
    {
        if (a[i]!=b[i]) return false;
    }
    return true;
}
int main(){
     assert (issame(remove_duplicates({1, 2, 3, 2,4}) , {1,  3, 4}));
}
```
