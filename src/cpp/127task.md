## task_id

```
CPP/127
```

## prompt

```cpp
/*
You are given two intervals,
where each interval is a pair of integers. For example, interval = (start, end) = (1, 2).
The given intervals are closed which means that the interval (start, end)
includes both start and end.
For each given interval, it is assumed that its start is less or equal its end.
Your task is to determine whether the length of intersection of these two 
intervals is a prime number.
Example, the intersection of the intervals (1, 3), (2, 4) is (2, 3)
which its length is 1, which not a prime number.
If the length of the intersection is a prime number, return "YES",
otherwise, return "NO".
If the two intervals don't intersect, return "NO".


{input/output} samples:
intersection({1, 2}, {2, 3}) ==> "NO"
intersection({-1, 1}, {0, 4}) ==> "NO"
intersection({-3, -1}, {-5, 5}) ==> "YES"
*/
#include<stdio.h>
#include<vector>
#include<string>
using namespace std;
string intersection( vector<int> interval1,vector<int> interval2){
```

## declaration

```cpp
#include<stdio.h>
#include<math.h>
#include<vector>
#include<string>
#include<algorithm>
using namespace std;
#include<stdlib.h>
string intersection( vector<int> interval1,vector<int> interval2){
```

## example_test

```cpp
#undef NDEBUG
#include<assert.h>
int main(){
    assert (intersection({1, 2}, {2, 3}) == "NO");
    assert (intersection({-1, 1}, {0, 4}) == "NO");
    assert (intersection({-3, -1}, {-5, 5}) == "YES");
}
```
