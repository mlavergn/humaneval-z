## task_id

```
CPP/49
```

## prompt

```cpp
/*
Return 2^n modulo p (be aware of numerics).
>>> modp(3, 5)
3
>>> modp(1101, 101)
2
>>> modp(0, 101)
1
>>> modp(3, 11)
8
>>> modp(100, 101)
1
*/
#include<stdio.h>
using namespace std;
int modp(int n,int p){
```

## declaration

```cpp
#include<stdio.h>
#include<math.h>
using namespace std;
#include<algorithm>
#include<stdlib.h>
int modp(int n,int p){
```

## example_test

```cpp
#undef NDEBUG
#include<assert.h>
int main(){
    assert (modp(3, 5) == 3);
    assert (modp(1101, 101) == 2);
    assert (modp(0, 101) == 1);
    assert (modp(3, 11) == 8);
    assert (modp(100, 101) == 1);
}
```
