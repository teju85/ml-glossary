---
layout: page
title:  local response normalization
aka: LRN
needmath: true
---
One of the layers used in deep networks

- it acts as a sort of "lateral inhibitor"
- in our brain, the most excited neuron has the tendency to suppress the output
  of its neighboring neurons.
- LRN tries to achieve the same thing
- 2 ways of doing LRN
  - across-channels: Nx1x1 local neighborhood is considered
  - within-channel: 1xNxN local neighborhodd is considered
- eqn is as follows:
  $$A' = \frac{A}{(k + \alpha * sum(A[neighborhood]^2))^{\beta}}$$
  N, $$\alpha$$, $$\beta$$, k are hyper-parameters
