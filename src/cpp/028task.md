## task_id

```
CPP/28
```

## prompt

```cpp
/*
Concatenate vector of strings into a single string
>>> concatenate({})
""
>>> concatenate({"a", "b", "c"})
"abc"
*/
#include<stdio.h>
#include<vector>
#include<string>
using namespace std;
string concatenate(vector<string> strings){
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
string concatenate(vector<string> strings){
```

## example_test

```cpp
#undef NDEBUG
#include<assert.h>
int main(){
    assert (concatenate({}) == "");
    assert (concatenate({"a", "b", "c"}) == "abc");
}
```
