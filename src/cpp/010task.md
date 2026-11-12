## task_id

```
CPP/10
```

## prompt

```cpp
#include<stdio.h>
#include<string>
using namespace std;
bool is_palindrome(string str){
    //Test if given string is a palindrome 
    string s(str.rbegin(),str.rend());
    return s==str;
}
string make_palindrome(string str){
    /*
    Find the shortest palindrome that begins with a supplied string. 
    Algorithm idea is simple: - Find the longest postfix of supplied string that is a palindrome. 
    - Append to the end of the string reverse of a string prefix that comes before the palindromic suffix.
    >>> make_palindrome("") 
    "" 
    >>> make_palindrome("cat") 
    "catac" 
    >>> make_palindrome("cata") 
    "catac" 
    */
```

## declaration

```cpp
#include<stdio.h>
#include<string>
using namespace std;
#include<algorithm>
#include<math.h>
#include<stdlib.h>
bool is_palindrome(string str){
    string s(str.rbegin(),str.rend());
    return s==str;
}
string make_palindrome(string str){
```

## example_test

```cpp
#undef NDEBUG
#include<assert.h>
int main(){
    assert (make_palindrome("") == "");
    assert (make_palindrome("cat") == "catac");
     assert (make_palindrome("cata") == "catac");
}
```
