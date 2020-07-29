---
layout: page
title:  matrix-free methods
---

Methods to solve linear systems or eigenvalues which do not explicitly store the
matrix coefficients. Instead, they'll be computed typically based on a gemv
operation.

This can be very useful when the matrices are so large that storing them
explicitly is prohibitive. Some popular iterative solvers that support this are:
1. LOBPCG solver
2. Conjugate gradient solver
