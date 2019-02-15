---
layout: page
title: Quasi Newton Method
references:
  - https://en.wikipedia.org/wiki/Quasi-Newton_method
  - https://www.youtube.com/watch?v=U0xlKuFqCuI
needmath: true
see also:
  - lbfgs
---
QN are a family of methods for optimization, based on Newton methods. They,
however, do not require the computation of the Hessian matrix.

Since they do not need to compute Hessian, these methods are computationally
cheaper, as well as require less memory footprint.
