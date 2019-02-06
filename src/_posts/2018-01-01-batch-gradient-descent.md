---
layout: page
title:  Batch Gradient Descent
references:
  - https://www.slideshare.net/SebastianRuder/optimization-for-deep-learning
needmath: true
seealso:
  - gradient-descent
---
This performs gradient descent with the entire dataset.

$$ \theta = \theta - \eta . \nabla_{\theta} J(\theta) $$

Where:
1. $$\theta$$ = set of parameters
2. $$\eta$$ = learning rate
3. J = the function to be optimized

Pros:
1. Guaranteed to converge to global minima for convex $$J$$.
2. Converges to local minima for other surface types.

Cons:
1. Doesn't work for datasets needing to be out-of-core.
2. Thus, no online learning
3. Runs slow
