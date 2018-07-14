---
layout: page
title:  Givens Rotation
needmath: true
references:
  - https://en.wikipedia.org/wiki/Givens_rotation
  - https://devblogs.nvidia.com/cuda-pro-tip-fast-robust-computation-givens-rotations
---
Product of a givens rotation matrix with a vector represents counter clockwise
rotation on a given plane, by given degrees/radians.

Givens rotation matrix is defined by the following rules:
```
G(i, j, \theta) = M where:
  i > j
  M(k,k) = 1 for k!={i,j}
  M(k,k) = cos\theta for k={i,j}
  M(i,j) = -M(j,i) = -sin\theta
  M(x,y) = 0 else
```
