## task_id

```
CPP/137
```

## prompt

```cpp
/*
Create a function that takes integers, floats, or strings representing
real numbers, and returns the larger variable in its given variable type.
Return "None" if the values are equal.
Note: If a real number is represented as a string, the floating point might be . or ,

compare_one(1, 2.5) ➞ 2.5
compare_one(1, "2,3") ➞ "2,3"
compare_one("5,1", "6") ➞ "6"
compare_one("1", 1) ➞ "None"
*/
#include<stdio.h>
#include<string>
#include<algorithm>
#include<boost/any.hpp>
using namespace std;
boost::any compare_one(boost::any a,boost::any b){
```

## declaration

```cpp
#include<stdio.h>
#include<math.h>
#include<string>
#include<algorithm>
#include<boost/any.hpp>
using namespace std;
#include<stdlib.h>
boost::any compare_one(boost::any a,boost::any b){
```

## example_test

```cpp
#undef NDEBUG
#include<assert.h>
int main(){
    assert (boost::any_cast<double>(compare_one(1, 2.5))== 2.5);
    assert (boost::any_cast<string>(compare_one(1, string("2,3")))== "2,3");
    assert (boost::any_cast<string>(compare_one(string("5,1"), string("6"))) == "6");
    assert (boost::any_cast<string>(compare_one(string("1"), 1)) == "None");
}
```
