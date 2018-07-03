---
layout: page
title:  Cholesky Decomp
aka:
  - Cholesky Decomposition
  - Cholesky factorization
references:
  - https://en.wikipedia.org/wiki/Cholesky_decomposition
seealso:
  - unitary-matrix
  - positive-definite-matrix
needmath: true
---
Cholesky decomposition is a hermitian positive-definite matrix factorization
technique.

For a given hermitian positive-definite matrix A, there exists a decomposition
of the form:
$$ A = L . L^* $$
* A = the input matrix of dimension n x n.
* L = lower triangular matrix

Cholesky-decomp is ~2x faster than LU-decomp for solving linear systems, when
applicable.
