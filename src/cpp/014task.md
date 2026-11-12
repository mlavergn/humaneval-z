## task_id

```
CPP/14
```

## prompt

```cpp
/*
Return vector of all prefixes from shortest to longest of the input string
>>> all_prefixes("abc")
{"a", "ab", "abc"}
*/
#include<stdio.h>
#include<vector>
#include<string>
using namespace std;
vector<string> all_prefixes(string str){
```

## declaration

```cpp
#include<stdio.h>
#include<vector>
#include<string>
using namespace std;
#include<algorithm>
#include<math.h>
#include<stdlib.h>
vector<string> all_prefixes(string str){
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
    assert (issame(all_prefixes("abc"),{"a","ab","abc"}));
}
```
