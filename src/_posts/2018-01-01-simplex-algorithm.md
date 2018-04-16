---
layout: page
title:  Simplex Algorithm
references:
  - https://en.wikipedia.org/wiki/Simplex_algorithm
  - https://people.richland.edu/james/ictcm/2006/simplex.html
  - http://mathworld.wolfram.com/SimplexMethod.html
needmath: true
---
Simplex algorithm is one of the methods to solve linear programming problems.

It solves the standard form of linear programming problem:
Maximizing $$ c^T . x$$ subject to $$Ax = b$$ all $$x_i >= 0$$ and all $$b_j >= 0$$.

Where:
* c = coefficients
* x = the variables
* A = a rectangular matrix
* b = constants

Simplex algorithm iteratively tests adjacent vertices all the while improving
the objective function. This can also be visualized as a traversal along the
edges of a polytope formed by the standard form.
