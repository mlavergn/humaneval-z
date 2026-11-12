## task_id

```
CPP/119
```

## prompt

```cpp
/*
You are given a vector of two strings, both strings consist of open
parentheses '(' or close parentheses ')' only.
Your job is to check if it is possible to concatenate the two strings in
some order, that the resulting string will be good.
A string S is considered to be good if and only if all parentheses in S
are balanced. For example: the string "(())()" is good, while the string
"())" is not.
Return "Yes" if there's a way to make a good string, and return "No" otherwise.

Examples:
match_parens({"()(", ")"}) == "Yes"
match_parens({")", ")"}) == "No"
*/
#include<stdio.h>
#include<vector>
#include<string>
using namespace std;
string match_parens(vector<string> lst){
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
string match_parens(vector<string> lst){
```

## example_test

```cpp
#undef NDEBUG
#include<assert.h>
int main(){
    assert (match_parens({"()(", ")"}) == "Yes");
    assert (match_parens({")", ")"}) == "No");
}
```
