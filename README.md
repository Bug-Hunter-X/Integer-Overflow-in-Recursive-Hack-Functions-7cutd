# Integer Overflow Bug in Recursive Hack Functions

This repository demonstrates a subtle integer overflow bug in a set of recursive Hack functions. The `foo` function calculates the factorial, which is prone to overflow. `bar` and `baz` also have potential overflow issues. The primary goal is to highlight how seemingly simple recursive functions can lead to unexpected behavior due to integer limits.

## Bug Description
The factorial function (`foo`) is implemented recursively.  For moderately large input values, the result quickly exceeds the maximum value representable by an integer, leading to an integer overflow.  This will likely produce incorrect results or even program crashes.  Similarly, `bar` (summation) and `baz` (factorial times summation) have a potential for overflow, though the threshold is higher for these functions.

## Solution
The solution involves checking for potential overflow *before* performing operations that could cause it.  Alternatively, one could use arbitrary-precision integer libraries.