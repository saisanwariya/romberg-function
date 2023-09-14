# Romberg Integration MATLAB Program

## Overview

This MATLAB program implements Romberg integration with an error estimate. Romberg integration is a numerical technique for approximating definite integrals of functions. The program provides an estimate of the integral, an error estimate, and an indicator (ier) to signal whether the specified tolerance has been reached.

## Program Functionality

The `romberg` function has the following form:

```matlab
[int, err, ier] = romberg(f, a, b, tol)
```

- `f`: A function handle for the function to be integrated.
- `a`, `b`: The limits of integration, i.e., you are approximating the integral of `f(x)` from `a` to `b`.
- `tol`: The error tolerance, such that |T_k(h) - T_(k-1)(h)| <= tol, where T_k(h) is accepted as the integral.

The output variables are:
- `int`: The approximate integral.
- `err`: The value of |T_k(h) - T_(k-1)(h)|, the error estimate.
- `ier`: An indicator, where 1 indicates that the tolerance was not reached, and 0 indicates that the tolerance was reached. A maximum of 10 levels of extrapolation (k=10) is allowed.


## Running the Program

To run the Romberg integration program, follow these steps:

1. Open MATLAB.

2. In the MATLAB command window, navigate to the directory where you saved the `romberg.m` file.

3. Type the following command to run the Romberg integration with your desired function, limits, and tolerance:

```matlab
[int, err, ier] = romberg(@function_name, a, b, tol)
```

Replace `function_name` with the name of the function you want to integrate, `a` and `b` with the integration limits, and `tol` with your desired error tolerance.

4. View the results, where `int` will provide the approximate integral, `err` will show the error estimate, and `ier` will indicate if the tolerance was reached (0) or not (1).

## Notes

- You can test the code on the provided functions (`pifunc.m`, `logderiv.m`, and `erfderiv.m`) with a tolerance of `1e-14`.

- The program takes advantage of the Richardson extrapolation process, and you do not need a two-dimensional array for this.



# Academic Integrity Statement

Please note that all work included in this project is the original work of the author, and any external sources or references have been properly cited and credited. It is strictly prohibited to copy, reproduce, or use any part of this work without permission from the author.

If you choose to use any part of this work as a reference or resource, you are responsible for ensuring that you do not plagiarize or violate any academic integrity policies or guidelines. The author of this work cannot be held liable for any legal or academic consequences resulting from the misuse or misappropriation of this work.

Any unauthorized copying or use of this work may result in serious consequences, including but not limited to academic penalties, legal action, and damage to personal and professional reputation. Therefore, please use this work only as a reference and always ensure that you properly cite and attribute any sources or references used.