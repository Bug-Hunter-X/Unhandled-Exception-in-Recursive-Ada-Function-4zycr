# Unhandled Exception in Recursive Ada Function

This repository demonstrates a common error in Ada programming: improper exception handling within recursive functions.  The `Factorial` function, while attempting to handle exceptions, does so in a way that could lead to misleading results.  The solution shows how to improve the exception handling for better error reporting.

## Bug Description

The primary issue lies in how the `Factorial` function handles potential errors (like negative input).  While an exception handler is present, it simply returns -1, masking the true nature of the error. A more robust solution would be to either raise a more informative exception or use a different mechanism to indicate failure.

## Solution

The improved version uses a dedicated exception and provides better reporting.