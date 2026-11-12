## task_id

```
CPP/147
```

## prompt

```cpp
/*
You are given a positive integer n. You have to create an integer vector a of length n.
    For each i (1 ≤ i ≤ n), the value of a{i} = i * i - i + 1.
    Return the number of triples (a{i}, a{j}, a{k}) of a where i < j < k, 
and a[i] + a[j] + a[k] is a multiple of 3.

Example :
    Input: n = 5
    Output: 1
    Explanation: 
    a = {1, 3, 7, 13, 21}
    The only valid triple is (1, 7, 13).
*/
#include<stdio.h>
#include<vector>
using namespace std;
int get_matrix_triples(int n){
```

## declaration

```cpp
#include<stdio.h>
#include<vector>
using namespace std;
#include<algorithm>
#include<math.h>
#include<stdlib.h>
int get_matrix_triples(int n){
```

## example_test

```cpp
#undef NDEBUG
#include<assert.h>
int main(){
    assert (get_matrix_triples(5) == 1);
}
```
